package com.shachar.first;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;

import org.joda.time.Period;

public class Utils {
	public static double formatNumber(double num) {
		DecimalFormat df = new DecimalFormat("#.##");
		return Double.valueOf(df.format(num));
	}

	public static int sum(Collection<Integer> numbers) {
		int sum = 0;
		for (int num : numbers) {
			sum += num;
		}
		return sum;
	}

	public static Date getDate() {
		return new Date();

	}

	public static String getPeriod(Date date) {
		Period period = new Period(date.getTime(), (new Date()).getTime());
		System.out.println(period.getYears());
		String diff;
		if (Math.abs(period.getYears()) != 0) {
			diff = String.format("%d שנים", Math.abs(period.getYears()));
		} else if (Math.abs(period.getMonths()) != 0) {
			diff = String.format("%d חודשים", Math.abs(period.getMonths()));
		} else if(Math.abs(period.getWeeks()) != 0) {
			diff = String.format("%d שבועות", Math.abs(period.getWeeks()));
		} else if(Math.abs(period.getDays()) != 0) {
			diff = String.format("%d ימים", Math.abs(period.getDays()));
		} else if (Math.abs(period.getHours()) != 0) {
			diff = String.format("%d שעות", Math.abs(period.getHours()));
		} else if(Math.abs(period.getMinutes()) != 0) {
			diff = String.format("%d דקות", Math.abs(period.getMinutes()));
		} else {
			diff = "לפני פחות מדקה";
		}
		return diff;
	}

	public static String formatDatabaseDate(Date date) {
		DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return formatter.format(date);
	}

	public static String formatDate(Date date) {
		DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm");
		return formatter.format(date);
	}

	public static String formatDateForRegister(Date date) {
		DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		return formatter.format(date);
	}

	public static void main(String args[]) {
		getPeriod(DatabaseManager.get().getUserDatabase().getAllEntities().get(0).getLastSeen());
	}

	public static boolean isEmptyOrNull(String s) {
		return s == null || s.isEmpty();
	}

}
