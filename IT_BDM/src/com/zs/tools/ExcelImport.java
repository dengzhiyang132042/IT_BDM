package com.zs.tools;

import java.io.FileInputStream;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFDataFormat;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class ExcelImport {
	
	static Logger log=Logger.getLogger(ExcelImport.class);
	
	/**
	 * 张顺 2016-11-10 数据导入攻击
	 * <br>从excle表格中获取数据
	 * <nr>支持xls、xlsx格式
	 * @param filePath
	 * @throws IOException
	 * @Return object二维数组
	 */
	public static Object[][] getDataFromExcel(String filePath) throws IOException{
		Object[][] obj=null;
		//判断是否为excel类型文件
		if(!filePath.endsWith(".xls")&&!filePath.endsWith(".xlsx")){
			log.error("文件不是excel类型:"+filePath);
		}
		FileInputStream fis =null;
		Workbook wookbook = null;
		//获取一个绝对地址的流
		fis = new FileInputStream(filePath);
		if (filePath.endsWith(".xls")) {
			//2003版本的excel，用.xls结尾
			wookbook = new HSSFWorkbook(fis);//得到工作簿
		}else if (filePath.endsWith(".xlsx")) {
			//2007版本的excel，用.xlsx结尾
			wookbook = new XSSFWorkbook(fis);//得到工作簿
		}
		//得到一个工作表
		Sheet sheet = wookbook.getSheetAt(0);
		//获得表头
		Row rowHead = sheet.getRow(0);
		//获取列数
		int cols=rowHead.getPhysicalNumberOfCells();
		//获得数据的总行数
		int totalRowNum = sheet.getLastRowNum();
		/*
		//判断表头是否正确
		if(cols != 3){
			System.out.println("表头的数量不对!");
		}
		*/
		obj=new Object[totalRowNum+1][cols];
		//获得所有数据
		for(int i = 0 ; i <=totalRowNum ; i++){
			//获得第i行对象
			Row row = sheet.getRow(i);
			//获得获得第i行第j列的 String类型对象
			for (int j = 0; j <cols; j++) {
				Cell cell = row.getCell((short)j);
				obj[i][j]=parseExcel(cell);
			}
		}
		return obj;
	}
	
	/**
	 * 张顺 2016-11-10<br>
	 * 单元格格式自动处理
	 * @param cell 单元格
	 * @return
	 */
	private static String parseExcel(Cell cell) {
		String result = new String();
		switch (cell.getCellType()) {
		case HSSFCell.CELL_TYPE_NUMERIC:// 数字类型
			if (HSSFDateUtil.isCellDateFormatted(cell)) {// 处理日期格式、时间格式
				SimpleDateFormat sdf = null;
				if (cell.getCellStyle().getDataFormat() == HSSFDataFormat.getBuiltinFormat("h:mm")) {
					sdf = new SimpleDateFormat("HH:mm");
				} else {// 日期
					sdf = new SimpleDateFormat("yyyy-MM-dd");
				}
				Date date = cell.getDateCellValue();
				result = sdf.format(date);
			} else if (cell.getCellStyle().getDataFormat() == 58) {
				// 处理自定义日期格式：m月d日(通过判断单元格的格式id解决，id的值是58)
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				double value = cell.getNumericCellValue();
				Date date = org.apache.poi.ss.usermodel.DateUtil
						.getJavaDate(value);
				result = sdf.format(date);
			} else {
				double value = cell.getNumericCellValue();
				CellStyle style = cell.getCellStyle();
				DecimalFormat format = new DecimalFormat();
				String temp = style.getDataFormatString();
				// 单元格设置成常规
				if (temp.equals("General")) {
					format.applyPattern("#");
				}
				result = format.format(value);
			}
			break;
		case HSSFCell.CELL_TYPE_STRING:// String类型
			result = cell.getRichStringCellValue().toString();
			break;
		case HSSFCell.CELL_TYPE_BLANK:
			result = "";
		default:
			result = "";
			break;
		}
		return result;
	}

	/*
	 */
	public static void main(String[] args) throws IOException {
		Object obj[][]=ExcelImport.getDataFromExcel("E:\\abc.xlsx");
		for (int i = 0; i < obj.length; i++) {
			for (int j = 0; j < obj[i].length; j++) {
				System.out.print(obj[i][j]+"   ");
			}
			System.out.println();
		}
	}
}
