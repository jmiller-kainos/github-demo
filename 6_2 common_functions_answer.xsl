<?xml version="1.0" encoding="UTF-8"?>
<!-- 
Business Case: The vendor would like to output the salary and available date for 
each position. They have also requested a count of the filled positions at the 
beginning of the file. Use common XSLT functions to enhance the output.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:wd="urn:com.workday.report/WDINST_RW_EIB_Positions"
    exclude-result-prefixes="xs wd" version="2.0">
    
    <xsl:output indent="no"/>
    
    <xsl:template match="/">
        <FilledPositions>
            <!--The count function is used to count the number of items in a sequence. That sequence is represented with
                XPath to identify the set of elements you wish to count. Note that since this is XPath predicates can be used
                as seen below. This syntax counts the number of wd:Report_Entry elements where wd:Available is equal to 0. -->
            <FilledPositionsCount>
                <xsl:value-of select="count(wd:Report_Data/wd:Report_Entry[wd:Available=0])" />
            </FilledPositionsCount>
            <xsl:apply-templates select="wd:Report_Data/wd:Report_Entry[wd:Available=0]"/>
        </FilledPositions>
    </xsl:template>
    
    <xsl:template match="wd:Report_Entry">
        <Position>
            <PositionTitle>
                <xsl:value-of select="wd:Title" />
            </PositionTitle>
            <PositionLocation>
                <xsl:value-of select="wd:Hiring_Location/wd:ID[@wd:type='Location_ID']" />
            </PositionLocation>
            <AssignedWorker>
                <xsl:value-of select="wd:Worker_Detail/wd:Worker/wd:ID[@wd:type='Employee_ID' or @wd:type='Contingent_Worker_ID']" />
            </AssignedWorker>
            <!--The format-number function is used to apply a format mask to a number. This function requires two parameters, first
                the XPath to the number you wish to format and the second parameter is the mask to apply. The syntax below will
                format the pay with a dollar sign and a comma ($###,###,###). -->
            <Salary>
                <xsl:value-of select="format-number(wd:Pay, '$###,###,###')" />
            </Salary>
            <!--The format-date function is used to apply a format mask to a date. Please note there is a difference between formatting
                a date and formatting a date time. These are two different functions. This function requires two parameters, first the
                XPath to the date you wish to format and the second parameter is the mask to apply. The syntax below will format the
                avail date as "two digit month/two digit day/four digit year". -->
            <AvailableDate>
                <xsl:value-of select="format-date(wd:Avail_Date, '[M01]/[D01]/[Y0001]')" />
            </AvailableDate>
        </Position>
    </xsl:template>
</xsl:stylesheet>