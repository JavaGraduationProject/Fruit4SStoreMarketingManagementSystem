package com.service;

import com.ORM.*;
import java.util.*;

public interface CartService {
	/** ѡ��ˮ�� */	
	public boolean addCart(Member member,Merchandise mer,int number) throws Exception;
	/** �鿴���ﳵ�е�ѡ��ˮ�� */
	public List browseCart(Member member) throws Exception;		
	/** ��չ��ﳵ */	
	public boolean clearCart(Member member) throws Exception;		
	/** ����ѡ��ˮ�������� */	
	public boolean modiCart(Integer id,int number) throws Exception;	
	/** ɾ����ѡ��ˮ�� */	
	public boolean delCart(Integer id) throws Exception;
	/** װ��ָ����Ա�Ĺ��ﳵ */	
	public Cart loadCart(Member member) throws Exception;
	/** ���¹��ﳵ */	
	public boolean updateCart(Cart cart) throws Exception;
}
