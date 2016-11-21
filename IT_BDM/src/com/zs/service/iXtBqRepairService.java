package com.zs.service;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;

public interface iXtBqRepairService {

	public void importExcelData(String fileName,File file)throws NumberFormatException, ParseException, IOException;
}
