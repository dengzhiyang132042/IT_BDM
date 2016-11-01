/**
 * 
 */
package com.zs.tools;

import java.io.File;
import java.io.FileOutputStream;
import java.util.Calendar;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFDataFormat;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

/**
 * @author 黄光辉
 *测试数据导出到excel表格中
 */
public class TestExcel {
	
	public void PoiExcel(Object[] obj,Object[][] test)throws Exception{
		String outFile = "C:/Users/it025/Desktop/测试.xls";
		try {     
			// 创建新的Excel 工作簿     
			HSSFWorkbook workbook = new HSSFWorkbook();    
			// 在Excel 工作簿中建一工作表    
			HSSFSheet sheet = workbook.createSheet("Sheet1");    
			// 设置单元格格式(文本) 
			HSSFCellStyle cellStyle = workbook.createCellStyle(); 
			cellStyle.setDataFormat(HSSFDataFormat.getBuiltinFormat("@"));         
			// 在索引0的位置创建行（第一行）     
			HSSFRow row = sheet.createRow((short) 0); 
			for(int i = 0 ; i < obj.length ; i++){
				HSSFCell cell1 = row.createCell((short) i);
				cell1.setCellType(HSSFCell.CELL_TYPE_STRING); 
				cell1.setEncoding(HSSFCell.ENCODING_UTF_16);
				cell1.setCellValue(obj[i].toString());
			}
//			HSSFCell cell1 = row.createCell((short) 0);
//			HSSFCell cell2 = row.createCell((short) 1);    
//			HSSFCell cell3 = row.createCell((short) 2);   
//			// 定义单元格为字符串类型     
//			cell1.setCellType(HSSFCell.CELL_TYPE_STRING);    
//			cell2.setCellType(HSSFCell.CELL_TYPE_STRING);    
//			cell3.setCellType(HSSFCell.CELL_TYPE_STRING);         
//			cell1.setEncoding(HSSFCell.ENCODING_UTF_16);    
//			cell2.setEncoding(HSSFCell.ENCODING_UTF_16);    
//			cell3.setEncoding(HSSFCell.ENCODING_UTF_16);    
			// 在单元格中输入数据    
//			cell1.setCellValue("姓名");    
//			cell2.setCellValue("性别");    
//			cell3.setCellValue("年龄");
			
			

			for(int j = 0 ; j < test.length ; j++){    
					row = sheet.createRow((short) j+1);     
					//设置i列从第二列开始     
					for (int i = 0; i < test[j].length; i++) {      
						HSSFCell cell = row.createCell((short) (i));   
						// 设置单元格格式        
						cell.setCellStyle(cellStyle);  
						cell.setCellType(HSSFCell.CELL_TYPE_STRING); 
						cell.setEncoding(HSSFCell.ENCODING_UTF_16);   
						cell.setCellValue(test[j][i].toString());  
					}            
			}        
			// 删除路径下同名的Excel 文件   
			File path = new File(outFile);  
			path.delete();      
			// 新建一输出文件流    
			FileOutputStream fOut = new FileOutputStream(outFile);  
			// 把相应的Excel 工作簿存盘    
			workbook.write(fOut);  
			// 操作结束，关闭文件  
			fOut.flush();   
			fOut.close();    
		} 
		catch (Exception ioexception) {  
			System.out.println("测试失败");
		}
		
	}
	public Calendar getWeekFirst(int year, int week){
		  Calendar calendar = Calendar.getInstance();
		  calendar.set(year, 0, 1);
		  int weeks = 0;
		  while((weeks = calendar.get(Calendar.WEEK_OF_YEAR))<= week){
		   calendar.add(Calendar.MONTH, 1);
		   //System.out.println(calendar.get(Calendar.WEEK_OF_YEAR));
		  }
		  calendar.add(Calendar.MONTH, -1);
		  //System.out.println(calendar.get(Calendar.WEEK_OF_YEAR));
		  while((weeks = calendar.get(Calendar.WEEK_OF_YEAR))< week){
		   calendar.add(Calendar.DATE, 1);
		  }
		  return calendar;
		 }
}
	
