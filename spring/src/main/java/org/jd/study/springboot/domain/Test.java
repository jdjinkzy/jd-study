package org.jd.study.springboot.domain;
import com.jd.forcebot.toolkit.parameterized.latest.AsciiFileAccessArbitrarily;
import com.jd.forcebot.toolkit.parameterized.latest.AsciiFileAccessCircularly;
import com.jd.forcebot.engine.groovy.Lifecycle
import com.jd.forcebot.engine.groovy.RatePolicy
import com.jd.forcebot.engine.groovy.TestCase
import com.jd.forcebot.engine.groovy.TestSuite
import java.util.concurrent.TimeUnit;
import com.jd.forcebot.engine.TestUtils
import com.jd.forcebot.engine.groovy.*
import com.jd.forcebot.toolkit.*
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.Response
import okhttp3.Cookie;
import okhttp3.*;
import org.junit.Assert
import org.slf4j.Logger
import org.slf4j.LoggerFactory

/**
 * @author liuwei99
 *
 * @TestSuite - 类注解
 *   value - 事物父名称》String
 *   Lifecycle - 生命周期》Lifecycle.PROCESS, Lifecycle.THREAD, Lifecycle.SUITE, Lifecycle.CASE
 *   ratePolicy - 比例执行策略》RatePolicy.STANDARD, RatePolicy.PROBABILITY
 *
 * @TestCase - 方法注解
 *   value - 事物详细名称》String
 *   rate - 方法运行比例权重》int
 *   timeout - 方法运行超时时间》long default 60000L
 *   record - 是否统计该方法》boolean
 *
 * 自定义事务：
 * TestUtils.transactionBegin("xxx")
 * TestUtils.transactionSuccess("xxx")
 * TestUtils.transactionFailure("xxx")
 *
 */
@TestSuite(value = "forcebot", lifecycle = Lifecycle.THREAD, ratePolicy = RatePolicy.STANDARD)
class Test {

	/**
	* 实例化顺序读取文本文件，构造方法参数：
	* filepath:文件存储路径，可以指定classpath相对路径，也可以指定文件所在文件系统的绝对路径
	* separator:文件分隔符，用于对行数据进行分列读取使用，默认值为NULL，不对行数据进行分列读取
	* enCycle:启用循环读取文件模式，默认为true，当为true时，文件读取到末行数据时，下次调用读取方法时会将文件指针指向文件起始位置，当为false时，调用读取方法至文件末时，会返回NULL
	*/
	// static AsciiFileAccessCircularly accessCircularly = new AsciiFileAccessCircularly("ip.txt",",",true);

	/**
	* 实例化随机读取文本文件，构造方法参数：
	* filepath:文件存储路径，可以指定classpath相对路径，也可以指定文件所在文件系统的绝对路径
	* separator:文件分隔符，用于对行数据进行分列读取使用，默认值为NULL，不对行数据进行分列读取
	*/
	//static AsciiFileAccessArbitrarily arbitrarily = new AsciiFileAccessArbitrarily("ip.txt");

	public final Logger logger = TestUtils.LOGGER;
	public final OkHttpClient client;
	

	Test() {
		client = new OkHttpClient().newBuilder()
					.connectTimeout(6, TimeUnit.SECONDS)
					.readTimeout(6, TimeUnit.SECONDS)
					.writeTimeout(6, TimeUnit.SECONDS)
					.followRedirects(false)
					.build();
// 		builder = new Request.Builder();
// 		logger.info("TestRunner init...");
	}

	@TestCase
	void test() {
		// String oneline = accessCircularly.readLine(); //顺序读取一行数据，并将文件指针移向下一行行首
		// String[] onelineSplit = accessCircularly.readToArray(); //顺序读取文件中某一行数据，并根据指定的分隔符进行拆分到数组中
		// String oneline = arbitrarily.readLine(); //随机读取一行数据
		// String[] onelineSplit = arbitrarily.readToArray(); //随机读取文件中某一行数据，并根据指定的分隔符进行拆分到数组中
		//set request body
	
        Request.Builder builder;
		builder = new Request.Builder();

		Response response = null;
		Response response2 = null;
		Response response3 = null;
		Response response4 = null;
		Response response5 = null;
		Response response6 = null;
		String contextId;
		
       
        try {
            TestUtils.transactionBegin("1");
            MediaType mediaType = MediaType.parse("application/json; charset=utf-8")
            
            
	    	builder.header("Cookie", "pt_key=AAFbdnmbADDH___5LTRzspuCWgNc6WTWA0PHIMpqS_ecwdZuzPX4GopUHMpc_7z6jVzsA9Nzai4");
		
            RequestBody body = RequestBody.create(mediaType, "{\"businessCode\": \"101\",\"venderId\": \"1000112561\"}");
			Request request = builder.url("http://pre-api-crabs.jd.com/dazhaxie/init/initPage").post(body).build();
			response = client.newCall(request).execute();
			
			String  rle = response.body().string();
        	contextId = rle.substring(rle.indexOf("conextId")+11,rle.indexOf("conextId")+47);
	
			if(response.code() == 200 && rle.contains("成功")){ //如业务需求，请添加返回内容的判断！！！(如：response.body().string().contains("success"))
				TestUtils.transactionSuccess("1");
				// logger.error("Success11111!"+rle);
			}else{
				TestUtils.transactionFailure("1");
				logger.error("============= 1 response body: {}", rle);
			}
        } catch (Exception e) {
            TestUtils.transactionFailure("1");
            logger.error("error info:", e);
        } finally {
            if (response != null) response.close();
        }
        try {
        TestUtils.transactionBegin("2");
            MediaType mediaType = MediaType.parse("application/json; charset=utf-8")
            String cookie = "pt_key=AAFbdnmbADDH___5LTRzspuCWgNc6WTWA0PHIMpqS_ecwdZuzPX4GopUHMpc_7z6jVzsA9Nzai4;yue.jd.context.id="+ contextId
	    	builder.header("Cookie", cookie);
		
            RequestBody body2 = RequestBody.create(mediaType, "{\"cardNo\": \"109463798511\",\"cardPassword\": \"952653\",\"sessionId\": \"111\",\"verifyToken\": \"222\"}");
			Request request2 = builder.url("http://pre-api-crabs.jd.com/dazhaxie/validate/").post(body2).build();
			response2 = client.newCall(request2).execute();
			
			String rle2 = response2.body().string();
        
	
			if(response2.code() == 200 && rle2.contains("成功")){ //如业务需求，请添加返回内容的判断！！！(如：response.body().string().contains("success"))
				TestUtils.transactionSuccess("2");
				// logger.error("Success22222!"+rle2);
			}else{
				TestUtils.transactionFailure("2");
				logger.error("============= 2 response body: {}", rle2);
			}
        } catch (Exception e) {
            TestUtils.transactionFailure("2");
            logger.error("error info:", e);
        } finally {
            if (response2 != null) response.close();
        }
        try {
        TestUtils.transactionBegin("4");
            MediaType mediaType = MediaType.parse("application/json; charset=utf-8")
            String cookie = "pt_key=AAFbdnmbADDH___5LTRzspuCWgNc6WTWA0PHIMpqS_ecwdZuzPX4GopUHMpc_7z6jVzsA9Nzai4;yue.jd.context.id="+ contextId
	    	builder.header("Cookie", cookie);
		
            RequestBody body4 = RequestBody.create(mediaType, "{\"actual\":\"1\",\"post\":\"0\"}");
			Request request4 = builder.url("http://pre-api-crabs.jd.com/dazhaxie/sku/getSkuByCode").post(body4).build();
			response4 = client.newCall(request4).execute();
			
			String  rle4 = response4.body().string();
        
	
			if(response4.code() == 200 && rle4.contains("成功")){ //如业务需求，请添加返回内容的判断！！！(如：response.body().string().contains("success"))
				TestUtils.transactionSuccess("4");
				// logger.error("Success44444!"+rle4);
			}else{
				TestUtils.transactionFailure("4");
				// logger.error("Success22222!"+rle2);
				logger.error("============= 4 response body: {}", rle4);
			}
        } catch (Exception e) {
            TestUtils.transactionFailure("4");
            logger.error("error info:", e);
        } finally {
            if (response4 != null) response.close();
        }
        try {
        TestUtils.transactionBegin("5");
            MediaType mediaType = MediaType.parse("application/json; charset=utf-8")
            String cookie = "pt_key=AAFbdnmbADDH___5LTRzspuCWgNc6WTWA0PHIMpqS_ecwdZuzPX4GopUHMpc_7z6jVzsA9Nzai4;yue.jd.context.id="+ contextId
	    	builder.header("Cookie", cookie);
		
            RequestBody body5 = RequestBody.create(mediaType, "{\"endDate\": \"\",\"skuId\": 1111111,\"startDate\": \"\",\"storeCode\": \"\"}");
			Request request5 = builder.url("http://pre-api-crabs.jd.com/dazhaxie/schedule/scheduleList").post(body5).build();
			response5 = client.newCall(request5).execute();
			
			String  rle5 = response5.body().string();
        
	
			if(response5.code() == 200 && rle5.contains("成功")){ //如业务需求，请添加返回内容的判断！！！(如：response.body().string().contains("success"))
				TestUtils.transactionSuccess("5");
				// logger.error("Success55555!"+rle5);
			}else{
				TestUtils.transactionFailure("5");
				logger.error("============= 5 response body: {}", rle5);
			}
        } catch (Exception e) {
            TestUtils.transactionFailure("5");
            logger.error("error info:", e);
        } finally {
            if (response5 != null) response.close();
        }
        try {
        TestUtils.transactionBegin("6");
            MediaType mediaType = MediaType.parse("application/json; charset=utf-8")
            String cookie = "pt_key=AAFbdnmbADDH___5LTRzspuCWgNc6WTWA0PHIMpqS_ecwdZuzPX4GopUHMpc_7z6jVzsA9Nzai4;yue.jd.context.id="+ contextId
	    	builder.header("Cookie", cookie);
		
            RequestBody body6 = RequestBody.create(mediaType, "{\"address\":\"北京北京北京北京\",\"appointStartTime\":\"2018-08-23\",\"area\":\"大兴区总部\",\"customerName\":\"刘先生\",\"customerPhone\":\"18600001111\",\"remark\":\"测试\",\"serverType\":\"1\",\"skuId\":\"1111111\",\"storeCode\":\"\"}");
			Request request6 = builder.url("http://pre-api-crabs.jd.com/dazhaxie/order/submitOrder").post(body6).build();
			response6 = client.newCall(request6).execute();
			
			String  rle6 = response6.body().string();

			if(response6.code() == 200 && rle6.contains("成功")){ //如业务需求，请添加返回内容的判断！！！(如：response.body().string().contains("success"))
				TestUtils.transactionSuccess("6");
				// logger.error("Success66666!"+rle6);
			}else{
				TestUtils.transactionFailure("6");
				logger.error("============= 6response body: {}", rle6);
			}
        } catch (Exception e) {
            TestUtils.transactionFailure("6");
            logger.error("error info:", e);
        } finally {
            if (response6 != null) response.close();
        }
    }
}