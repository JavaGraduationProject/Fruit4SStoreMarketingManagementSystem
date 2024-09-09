package com.service;

import java.util.*;
import com.ORM.*;

/** ˮ�����ˮ�����ؼ�ˮ��ҵ���߼�����ӿ� */
public interface MerService {	
	/** ���ˮ����� */
	public List browseCategory() throws Exception;	
	/** װ��ָ����ˮ����� */	
	public Category loadCategory(Integer id) throws Exception;	
	/** ɾ��ָ����ˮ����� */	
	public boolean delCategory(Integer id) throws Exception;	
	/** ����ˮ����� */	
	public boolean addCategory(Category cate) throws Exception;	
	/** ����ˮ����� */	
	public boolean updateCategory(Category cate) throws Exception;
	
	/** ���ˮ�� */
	public List browseMer(String hql) throws Exception;	
	/** װ��ָ����ˮ�� */	
	public Merchandise loadMer(Integer id) throws Exception;	
	/** ɾ��ָ����ˮ�� */	
	public boolean delMer(Integer id) throws Exception;	
	/** ����ˮ�� */	
	public boolean addMer(Merchandise mer) throws Exception;	
	/** ����ˮ�� */	
	public boolean updateMer(Merchandise mer) throws Exception;
	
	/** ��ҳ���ˮ�� */
	public List browseMer(int pageSize,int pageNo,int cateId,boolean isSpecial) throws Exception;
	/** ����ˮ�� */
	public List browseMer(int pageSize,int pageNo,String hql) throws Exception;	
	/** ͳ�Ƽ�¼���� */
	public int countRecord(String hql) throws Exception;	
}