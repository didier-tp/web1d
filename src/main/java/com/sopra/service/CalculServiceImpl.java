package com.sopra.service;

import org.springframework.stereotype.Service;

@Service
public class CalculServiceImpl implements CalculService {

	@Override
	public Double add(Double a, Double b) {
		// TODO Auto-generated method stub
		return a + b;
	}

	@Override
	public Double mult(Double a, Double b) {
		// TODO Auto-generated method stub
		return a * b;
	}

}
