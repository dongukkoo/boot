package com.example.demo.component;

import org.apache.jasper.tagplugins.jstl.core.*;

public class ComponentA {

	private ComponentB comp;
	
	public ComponentA(ComponentB comp) {
		this.comp = comp;
	}
	
	public void setComp(ComponentB comp) {
		this.comp = comp;
	}
	
	public ComponentB getComp() {
		return comp;
	}
}
