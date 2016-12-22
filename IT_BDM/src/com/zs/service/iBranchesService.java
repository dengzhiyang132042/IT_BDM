package com.zs.service;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;

public interface iBranchesService {
	public void importExcelData(String fileName, File file,String uNum) throws IOException, NumberFormatException, ParseException;
}
