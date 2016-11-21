package com.zs.service;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;

public interface iXtPdaChangeService {

	public void importExcelData(String fileName, File file) throws IOException, NumberFormatException, ParseException;
}
