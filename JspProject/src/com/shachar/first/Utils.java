package com.shachar.first;

import java.text.DecimalFormat;
import java.util.Collection;

public class Utils {
	public static double formatNumber(double num) {
		DecimalFormat df = new DecimalFormat( "#.##" );
		return Double.valueOf(df.format(num));
	}
	
	public static int sum(Collection<Integer> numbers) {
		int sum = 0;
		for(int num : numbers) {
			sum += num;
		}
		return sum;
	}
	
	public static void main(String args[]) {
		System.out.println(formatNumber(102.3434));
	}
}
