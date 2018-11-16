package com.pro.exp.service.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * 描述:公共日期工具类
 */
public class DateUtils {

    public static String DATE_FORMAT = "yyyy-MM-dd";

    public static String DATE_TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";

    public static String DATE_FORMAT_CHINESE = "yyyy年M月d日";

    /**
     * @param
     * @return 该毫秒数转换为 * days * hours * minutes * seconds 后的格式
     * @author fy.zhang
     */
    public static String formatDuring(long mss) {
        // long days = mss / (1000 * 60 * 60 * 24);
        long hours = mss / (1000 * 60 * 60);
        long minutes = (mss % (1000 * 60 * 60)) / (1000 * 60);
        long seconds = (mss % (1000 * 60)) / 1000;
        return (hours > 0 ? hours + " 小时 " : "") + (minutes > 0 ? minutes + " 分钟 " : "")
                + seconds + " 秒 ";
    }

    /**
     * 获取当前日期
     *
     * @return
     */
    public static String getCurrentDate() {
        String datestr = null;
        SimpleDateFormat df = new SimpleDateFormat(DateUtils.DATE_FORMAT);
        datestr = df.format(new Date());
        return datestr;
    }

    /**
     * 获取当前日期时间
     *
     * @return
     */
    public static String getCurrentDateTime() {
        String datestr = null;
        SimpleDateFormat df = new SimpleDateFormat(DateUtils.DATE_TIME_FORMAT);
        datestr = df.format(new Date());
        return datestr;
    }

    /**
     * 获取当前日期时间
     *
     * @return
     */
    public static String getCurrentDateTime(String Dateformat) {
        String datestr = null;
        SimpleDateFormat df = new SimpleDateFormat(Dateformat);
        datestr = df.format(new Date());
        return datestr;
    }

    public static String dateToDateTime(Date date) {
        String datestr = null;
        SimpleDateFormat df = new SimpleDateFormat(DateUtils.DATE_TIME_FORMAT);
        datestr = df.format(date);
        return datestr;
    }

    /**
     * 将字符串日期转换为日期格式
     *
     * @param datestr
     * @return
     */
    public static Date stringToDate(String datestr) {

        if (datestr == null || datestr.equals("")) {
            return null;
        }
        Date date = new Date();
        SimpleDateFormat df = new SimpleDateFormat(DateUtils.DATE_FORMAT);
        try {
            date = df.parse(datestr);
        } catch (ParseException e) {
            date = DateUtils.stringToDate(datestr, "yyyyMMdd");
        }
        return date;
    }

    /**
     * 将字符串日期转换为日期格式
     * 自定義格式
     *
     * @param datestr
     * @return
     */
    public static Date stringToDate(String datestr, String dateformat) {
        Date date = new Date();
        SimpleDateFormat df = new SimpleDateFormat(dateformat);
        try {
            date = df.parse(datestr);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }


    /**
     * 将日期格式日期转换为字符串格式
     *
     * @param date
     * @return
     */
    public static String dateToString(Date date) {
        String datestr = null;
        SimpleDateFormat df = new SimpleDateFormat(DateUtils.DATE_FORMAT);
        datestr = df.format(date);
        return datestr;
    }

    /**
     * 将日期格式日期转换为字符串格式 自定義格式
     *
     * @param date
     * @param dateformat
     * @return
     */
    public static String dateToString(Date date, String dateformat) {
        String datestr = null;
        SimpleDateFormat df = new SimpleDateFormat(dateformat);
        datestr = df.format(date);
        return datestr;
    }

    /**
     * 获取日期的DAY值
     *
     * @param date 输入日期
     * @return
     */
    public static int getDayOfDate(Date date) {
        int d = 0;
        Calendar cd = Calendar.getInstance();
        cd.setTime(date);
        d = cd.get(Calendar.DAY_OF_MONTH);
        return d;
    }

    /**
     * 获取日期的MONTH值
     *
     * @param date 输入日期
     * @return
     */
    public static int getMonthOfDate(Date date) {
        int m = 0;
        Calendar cd = Calendar.getInstance();
        cd.setTime(date);
        m = cd.get(Calendar.MONTH) + 1;
        return m;
    }

    /**
     * 获取日期的YEAR值
     *
     * @param date 输入日期
     * @return
     */
    public static int getYearOfDate(Date date) {
        int y = 0;
        Calendar cd = Calendar.getInstance();
        cd.setTime(date);
        y = cd.get(Calendar.YEAR);
        return y;
    }

    /**
     * 获取星期几
     *
     * @param date 输入日期
     * @return
     */
    public static String getWeekOfDate(Date date) {
        int wd = 0;
        Calendar cd = Calendar.getInstance();
        cd.setTime(date);
        wd = cd.get(Calendar.DAY_OF_WEEK) - 1;
        switch (wd) {
            case 1:
                return "星期一";
            case 2:
                return "星期二";
            case 3:
                return "星期三";
            case 4:
                return "星期四";
            case 5:
                return "星期五";
            case 6:
                return "星期六";
            case 7:
                return "星期日";
            default:
                return "";
        }
    }

    /**
     * 获取输入日期的当月第一天
     *
     * @param date 输入日期
     * @return
     */
    public static Date getFirstDayOfMonth(Date date) {
        Calendar cd = Calendar.getInstance();
        cd.setTime(date);
        cd.set(Calendar.DAY_OF_MONTH, 1);
        return cd.getTime();
    }

    /**
     * 获得输入日期的当月最后一天
     *
     * @param date
     */
    public static Date getLastDayOfMonth(Date date) {
        return DateUtils.addDay(DateUtils.getFirstDayOfMonth(DateUtils.addMonth(date, 1)), -1);
    }

    /**
     * 判断是否是闰年
     *
     * @param date 输入日期
     * @return 是true 否false
     */
    public static boolean isLeapYEAR(Date date) {

        Calendar cd = Calendar.getInstance();
        cd.setTime(date);
        int year = cd.get(Calendar.YEAR);

        if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 根据整型数表示的年月日，生成日期类型格式
     *
     * @param year  年
     * @param month 月
     * @param day   日
     * @return
     */
    public static Date getDateByYMD(int year, int month, int day) {
        Calendar cd = Calendar.getInstance();
        cd.set(year, month - 1, day);
        return cd.getTime();
    }

    /**
     * 获取年周期对应日
     *
     * @param date  输入日期
     * @param iyear 年数  負數表示之前
     * @return
     */
    public static Date getYearCycleOfDate(Date date, int iyear) {
        Calendar cd = Calendar.getInstance();
        cd.setTime(date);

        cd.add(Calendar.YEAR, iyear);

        return cd.getTime();
    }

    /**
     * 获取月周期对应日
     *
     * @param date 输入日期
     * @param i
     * @return
     */
    public static Date getMonthCycleOfDate(Date date, int i) {
        Calendar cd = Calendar.getInstance();
        cd.setTime(date);

        cd.add(Calendar.MONTH, i);

        return cd.getTime();
    }

    /**
     * 计算 fromDate 到 toDate 相差多少年
     *
     * @param fromDate
     * @param toDate
     * @return 年数
     */
    public static int getYearByMinusDate(Date fromDate, Date toDate) {
        Calendar df = Calendar.getInstance();
        df.setTime(fromDate);

        Calendar dt = Calendar.getInstance();
        dt.setTime(toDate);

        return dt.get(Calendar.YEAR) - df.get(Calendar.YEAR);
    }

    /**
     * 计算 fromDate 到 toDate 相差多少个月
     *
     * @param fromDate
     * @param toDate
     * @return 月数
     */
    public static int getMonthByMinusDate(Date fromDate, Date toDate) {
        Calendar df = Calendar.getInstance();
        df.setTime(fromDate);

        Calendar dt = Calendar.getInstance();
        dt.setTime(toDate);

        return dt.get(Calendar.YEAR) * 12 + dt.get(Calendar.MONTH) -
                (df.get(Calendar.YEAR) * 12 + df.get(Calendar.MONTH));
    }

    /**
     * 计算 fromDate 到 toDate 相差多少天
     *
     * @param fromDate
     * @param toDate
     * @return 天数
     */
    public static long getDayByMinusDate(Object fromDate, Object toDate) {

        Date f = DateUtils.chgObject(fromDate);

        Date t = DateUtils.chgObject(toDate);

        long fd = f.getTime();
        long td = t.getTime();

        return (td - fd) / (24L * 60L * 60L * 1000L);
    }

    /**
     * 计算 fromDate 到 toDate 相差多少分钟
     *
     * @param fromDate
     * @param toDate
     * @return 天数
     */
    public static long getDayByMinusTime(Object fromDate, Object toDate) {

        Date f = DateUtils.chgObject(fromDate);

        Date t = DateUtils.chgObject(toDate);

        long fd = f.getTime();
        long td = t.getTime();

        return td - fd;
    }

    /**
     * 计算年龄
     *
     * @param birthday 生日日期
     * @param calcDate 要计算的日期点
     * @return
     */
    public static int calcAge(Date birthday, Date calcDate) {

        int cYear = DateUtils.getYearOfDate(calcDate);
        int cMonth = DateUtils.getMonthOfDate(calcDate);
        int cDay = DateUtils.getDayOfDate(calcDate);
        int bYear = DateUtils.getYearOfDate(birthday);
        int bMonth = DateUtils.getMonthOfDate(birthday);
        int bDay = DateUtils.getDayOfDate(birthday);

        if (cMonth > bMonth || (cMonth == bMonth && cDay > bDay)) {
            return cYear - bYear;
        } else {
            return cYear - 1 - bYear;
        }
    }

    /**
     * 从身份证中获取出生日期
     *
     * @param idno 身份证号码
     * @return
     */
    public static String getBirthDayFromIDCard(String idno) {
        Calendar cd = Calendar.getInstance();
        if (idno.length() == 15) {
            cd.set(Calendar.YEAR, Integer.valueOf("19" + idno.substring(6, 8))
                    .intValue());
            cd.set(Calendar.MONTH, Integer.valueOf(idno.substring(8, 10))
                    .intValue() - 1);
            cd.set(Calendar.DAY_OF_MONTH,
                    Integer.valueOf(idno.substring(10, 12)).intValue());
        } else if (idno.length() == 18) {
            cd.set(Calendar.YEAR, Integer.valueOf(idno.substring(6, 10))
                    .intValue());
            cd.set(Calendar.MONTH, Integer.valueOf(idno.substring(10, 12))
                    .intValue() - 1);
            cd.set(Calendar.DAY_OF_MONTH,
                    Integer.valueOf(idno.substring(12, 14)).intValue());
        }
        return DateUtils.dateToString(cd.getTime());
    }

    /**
     * 在输入日期上增加（+）或减去（-）天数
     *
     * @param date 输入日期
     *             <p>
     *             要增加或减少的天数
     */
    public static Date addDay(Date date, int iday) {
        Calendar cd = Calendar.getInstance();

        cd.setTime(date);

        cd.add(Calendar.DAY_OF_MONTH, iday);

        return cd.getTime();
    }

    /**
     * 132      * 时间加减分钟
     * 133      * @param startDate 要处理的时间，Null则为当前时间
     * 134      * @param minutes 加减的分钟
     * 135      * @return
     * 136
     */
    public static Date dateAddMinutes(Date startDate, int minutes) {
        if (startDate == null) {
            startDate = new Date();
        }
        Calendar c = Calendar.getInstance();
        c.setTime(startDate);
        c.set(Calendar.MINUTE, c.get(Calendar.MINUTE) + minutes);
        return c.getTime();
    }

    /**
     * 在输入日期上增加（+）或减去（-）月份
     *
     * @param date   输入日期
     * @param imonth 要增加或减少的月分数
     */
    public static Date addMonth(Date date, int imonth) {
        Calendar cd = Calendar.getInstance();

        cd.setTime(date);

        cd.add(Calendar.MONTH, imonth);

        return cd.getTime();
    }

    /**
     * 在输入日期上增加（+）或减去（-）年份
     *
     * @param date 输入日期
     * @param
     */
    public static Date addYear(Date date, int iyear) {
        Calendar cd = Calendar.getInstance();

        cd.setTime(date);

        cd.add(Calendar.YEAR, iyear);

        return cd.getTime();
    }

    /**
     * 將OBJECT類型轉換為Date
     *
     * @param date
     * @return
     */
    public static Date chgObject(Object date) {

        if (date != null && date instanceof Date) {
            return (Date) date;
        }

        if (date != null && date instanceof String) {
            return DateUtils.stringToDate((String) date);
        }

        return null;

    }

    public static long getAgeByBirthday(String date) {

        Date birthday = stringToDate(date, "yyyy-MM-dd");
        long sec = new Date().getTime() - birthday.getTime();

        long age = sec / (1000 * 60 * 60 * 24) / 365;

        return age;
    }

    public static boolean compareDate(String date1, String date2) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            Date date3 = format.parse(date1);
            Date date4 = format.parse(date2);
            return compareDateByGetTime(date3, date4);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * @param date1
     * @param date2
     * @Author: wangxer
     * @Description: 方式二 用Date的getTime()方法
     * @Date: Created in 11:36 on 2017/9/30.
     */
    public static boolean compareDateByGetTime(Date date1, Date date2) {
        if (date1.getTime() < date2.getTime()) {
            return true;
        } else if (date1.getTime() > date2.getTime()) {
            return false;
        } else {
            return false;
        }
    }
//    /**
//     * @param args
//     */
//    public static void main(String[] args) {
//        System.out.println(formatDuring(600000000));
//        System.out.println( 600000000 / (1000 * 60 * 60 *24));
//        System.out.println( (600000000 % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
//
//    }

    /**
     * 两个时间相差距离多少天多少小时多少分多少秒
     */
    public static String getDistanceTime(Date date1, Date date2) {
        long day = 0;
        long hour = 0;
        long min = 0;
        long sec = 0;
        long ms = 0;
        long time1 = date1.getTime();
        long time2 = date2.getTime();
        long diff;
        if (time1 < time2) {
            diff = time2 - time1;
        } else {
            diff = time1 - time2;
        }
        day = diff / (24 * 60 * 60 * 1000);
        hour = (diff / (60 * 60 * 1000) - day * 24);
        min = ((diff / (60 * 1000)) - day * 24 * 60 - hour * 60);
        sec = (diff / 1000 - day * 24 * 60 * 60 - hour * 60 * 60 - min * 60);
        //ms = (diff - day * 24 * 60 * 60 * 1000 - hour * 60 * 60 * 1000 - min * 60 * 1000 - sec * 1000);
        return day + "天" + hour + "小时" + min + "分" + sec + "秒";
        //return day + "天" + hour + "小时" + min + "分" + sec + "秒" + ms + "毫秒";
    }

    //计算传来的Long值等于多少天-小时-分-秒
    public static String getTotalFormatTime(Long diff) {
        long day = 0;
        long hour = 0;
        long min = 0;
        long sec = 0;
        long ms = 0;
        day = diff / (24 * 60 * 60 * 1000);
        hour = (diff / (60 * 60 * 1000) - day * 24);
        min = ((diff / (60 * 1000)) - day * 24 * 60 - hour * 60);
        sec = (diff / 1000 - day * 24 * 60 * 60 - hour * 60 * 60 - min * 60);
        //ms = (diff - day * 24 * 60 * 60 * 1000 - hour * 60 * 60 * 1000 - min * 60 * 1000 - sec * 1000);
        return day + "天" + hour + "小时" + min + "分" + sec + "秒";
        //return day + "天" + hour + "小时" + min + "分" + sec + "秒" + ms + "毫秒";
    }

    /***
     *
     * @param date
     * @param dateFormat : e.g:yyyy-MM-dd HH:mm:ss
     * @return
     */
    public static String formatDateByPattern(Date date,String dateFormat){
        SimpleDateFormat sdf = new SimpleDateFormat(dateFormat);
        String formatTimeStr = null;
        if (date != null) {
            formatTimeStr = sdf.format(date);
        }
        return formatTimeStr;
    }
    /***
     * convert Date to cron ,eg.  "0 06 10 15 1 ? 2014"
     * @param date  : 时间点
     * @return
     */
    public static String getCron(Date  date){
        String dateFormat="ss mm HH dd MM ? yyyy";
        return formatDateByPattern(date, dateFormat);
    }
}