package Calendar;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;


public class Cal {
	
	BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
	String line;
	int yearInt;
	int monthInt;
	String[] calData;
		
	public void cut(String str) {
		int idx = str.indexOf(" ");
		String yearStr = str.substring(0,idx);
		String monthStr = str.substring(idx + 1);
		monthStr = monthStr.trim();
		yearInt = Integer.parseInt(yearStr);
		monthInt = Integer.parseInt(monthStr);
	}
	
	public String[] showCalendar(String str) {
		cut(str);
		
		calData = new String[42];
		LocalDate date = LocalDate.of(yearInt, monthInt, 1);
		//1일 시작 위치
		int dayOfWeek = date.getDayOfWeek().getValue();
		//해당 월의 마지막 일
		int dateI = date.lengthOfMonth();
		int yearI = date.getYear();
		
        int monthI = date.getMonthValue();
        
        int count = 1;
        System.out.println("\n\n\t[\t\t\t" + (yearI) + "년\t" + (monthI) + "월\t\t\t]\n");
        System.out.println("\tSUN\tMON\tTUE\tWND\tTHU\tFRI\tSAT\t");

        for(int i=0 ; i<42 ; i++){
            for(int j=0 ; j<8 ; j++){
                if(j == 7){
                    System.out.println("h\n");
                }else if(count > dateI){
                    calData[j] = "";
                }else if(dayOfWeek == j){
                	calData[j] = String.valueOf(count);
                	System.out.print("\t" + count);
                    count++;
                    dayOfWeek++;
                    if(dayOfWeek == 7){
                    	dayOfWeek = 0;
                    }
                }else{
                	calData[j] = "";
                    System.out.print("\t");
                }
            }
        }  
        
        return calData;
	}
 
}
