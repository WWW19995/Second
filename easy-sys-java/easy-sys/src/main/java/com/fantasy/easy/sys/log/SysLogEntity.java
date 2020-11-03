/**
 * fantasy
 */
package com.fantasy.easy.sys.log;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fantasy.easy.core.entity.BaseEntity;
import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * @author fantasy
 *2020年9月4日 下午4:57:47
 */
@TableName("sys_log")
public class SysLogEntity extends BaseEntity {

	@TableId(type= IdType.AUTO)
	private Long logId;
	@JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date logStart;
	@JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date logEnd;
	private Long logLatency;
	private String logUri;
	private int logStatus;
	private String logIp;
	private Long logUserId;
	private String logMethod;
	/**
	 * @return the logId
	 */
	public Long getLogId() {
		return logId;
	}
	/**
	 * @param logId the logId to set
	 */
	public void setLogId(Long logId) {
		this.logId = logId;
	}
	/**
	 * @return the logStart
	 */
	public Date getLogStart() {
		return logStart;
	}
	/**
	 * @param logStart the logStart to set
	 */
	public void setLogStart(Date logStart) {
		this.logStart = logStart;
	}
	/**
	 * @return the logEnd
	 */
	public Date getLogEnd() {
		return logEnd;
	}
	/**
	 * @param logEnd the logEnd to set
	 */
	public void setLogEnd(Date logEnd) {
		this.logEnd = logEnd;
	}
	/**
	 * @return the logLatency
	 */
	public Long getLogLatency() {
		return logLatency;
	}
	/**
	 * @param logLatency the logLatency to set
	 */
	public void setLogLatency(Long logLatency) {
		this.logLatency = logLatency;
	}
	/**
	 * @return the logUri
	 */
	public String getLogUri() {
		return logUri;
	}
	/**
	 * @param logUri the logUri to set
	 */
	public void setLogUri(String logUri) {
		this.logUri = logUri;
	}
	/**
	 * @return the logStatus
	 */
	public int getLogStatus() {
		return logStatus;
	}
	/**
	 * @param logStatus the logStatus to set
	 */
	public void setLogStatus(int logStatus) {
		this.logStatus = logStatus;
	}
	/**
	 * @return the logIp
	 */
	public String getLogIp() {
		return logIp;
	}
	/**
	 * @param logIp the logIp to set
	 */
	public void setLogIp(String logIp) {
		this.logIp = logIp;
	}
	/**
	 * @return the logUserId
	 */
	public Long getLogUserId() {
		return logUserId;
	}
	/**
	 * @param logUserId the logUserId to set
	 */
	public void setLogUserId(Long logUserId) {
		this.logUserId = logUserId;
	}
	/**
	 * @return the logMethod
	 */
	public String getLogMethod() {
		return logMethod;
	}
	/**
	 * @param logMethod the logMethod to set
	 */
	public void setLogMethod(String logMethod) {
		this.logMethod = logMethod;
	}
	
	
	
}
