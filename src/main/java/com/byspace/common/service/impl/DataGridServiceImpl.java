package com.byspace.common.service.impl;

import com.byspace.common.po.DataGridData;
import com.byspace.common.po.DataGridPaginator;
import com.byspace.common.service.DataGridService;
import com.byspace.common.service.SimpleDataGridRow;
import com.byspace.util.CustomLogger;
import com.byspace.util.StringUtils;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-6
 * Time: 上午11:06
 */
@Service
@Transactional
public class DataGridServiceImpl implements DataGridService {

	private static final Map<String, String> classMap = new HashMap<String, String>();
	static {
		classMap.put("Category", "com.byspace.portal.article.entity.Category");
		classMap.put("Article", "com.byspace.portal.article.entity.Article");
	};

	@PersistenceContext
	private EntityManager em;

	@Override
	@Transactional(readOnly = true)
	public DataGridData getDataGridData(String className, DataGridPaginator paginator) {


		try {
			String classFullName = classMap.get(className);
			Class cls = Class.forName(classFullName);

			buildPaginator(className, paginator);

			String hql = "from " + className + " order by id";
			Query query = em.createQuery(hql);
			query.setFirstResult(paginator.getLimitFrom());
			query.setMaxResults(paginator.getRowsLimit());
			List list = query.getResultList();

			DataGridData dataGridData = new DataGridData();
			dataGridData.setTotal(paginator.getTotal());

			for (Object obj : list) {
				dataGridData.addRow(buildJsonObjectRow(cls, obj));
			}

			return dataGridData;

		} catch (Exception e) {
			CustomLogger.error(e, this);
			return new DataGridData();
		}
	}

	private void buildPaginator(String className, DataGridPaginator paginator) {
		paginator.setTotal(getTotalRows(className));

		int limitFrom = (paginator.getPageNum() - 1) * paginator.getRowsLimit();
		paginator.setLimitFrom(limitFrom);
	}

	private long getTotalRows(String className) {
		String hql = "select count(e.id) as cnt from " + className + " e";
		return (Long)em.createQuery(hql).getSingleResult();
	}


	private JSONObject buildJsonObjectRow(Class cls, Object rowObject) throws NoSuchMethodException, InvocationTargetException, IllegalAccessException {
		SimpleDataGridRow simpleDataGridRow = (SimpleDataGridRow) rowObject;

		JSONObject jsonObject = new JSONObject();
		List<String> fields = simpleDataGridRow.getFields();
		for (String field : fields) {
			String methodName = "get" + StringUtils.upperCaseFirstChar(field);
			Method method = cls.getMethod(methodName);
			Object value = method.invoke(rowObject);

			jsonObject.put(field, value);
		}

		return jsonObject;
	}
}
