package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/** ��������� */
public class CharacterEncodingFilter implements Filter {

	String encoding = null;
	FilterConfig filterConfig = null;
	
	/** ��ʼ������ */
	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig = filterConfig;
		this.encoding = filterConfig.getInitParameter("encoding");
	}

	/** ���˴����� */
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		if (encoding!=null){
			//��������б�������
			request.setCharacterEncoding(encoding);
		}
		//������Ȩת������һ��������
		chain.doFilter(request,response);
	}

	/** ���ٷ��� */
	public void destroy() {
		this.encoding = null;
		this.filterConfig = null;
	}

}