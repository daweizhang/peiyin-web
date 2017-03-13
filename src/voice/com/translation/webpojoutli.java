package voice.com.translation;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import voice.com.translation.TranslateToGoogle;
import voice.com.translation.TranslateUtil;

/**
 * 翻译集合对象工具包
 * 注意“字段-”为不翻译的字段  “字段”为要翻译的字段
 * @author Administrator entity:要翻译的集合对象 ages:要翻译的该对象的字段 classType:要翻译的实体类
 *         返回值为当前传入的对象集合 注意事项：不可传入带有特殊符号的字符串!
 */
@SuppressWarnings("unused")
public class webpojoutli {

	@SuppressWarnings("unchecked")
	public <T> List<T> webUlit(List<?> entity, String[] ages, Class<?> classType) {
		TranslateUtil translate = new TranslateToGoogle();
		Object obj = null;
		List<T> c = new ArrayList<T>();
		for (int i = 0; i < entity.size(); i++) {
			List<String> listSr = new ArrayList<String>();
			Field[] fields = entity.get(i).getClass().getDeclaredFields();
			for (int j = 0; j < ages.length; j++) {
				if (ages.length > 0) {
					for (Field f : fields) {
						String property = f.getName();
						// 循环查找要翻译的属性
						String BNames = ages[j].substring(ages[j].length() - 1,
								ages[j].length());
						// 判断是否要翻译
						if (!BNames.equals("-")) {
							if (property.equals(ages[j])) {
								String getff = "get"
										+ property.substring(0, 1)
												.toUpperCase()
										+ property.substring(1);
								// 通过反射机制生成get方法的 method对象
								Method m1Obj;
								try {
									m1Obj = entity.get(i).getClass()
											.getMethod(getff);
									// 反射机制调用属性的get方法获取对应的值
									Object value = m1Obj.invoke(entity.get(i));
									String fanyi;
									try {
										fanyi = translate.translate(
												value.toString(), "en");
										listSr.add(fanyi);
									} catch (Exception e) {
										System.out.println("连接超时"
												+ e.getMessage());
									}
								} catch (Exception e) {
									e.printStackTrace();
								}
							}

						} else {

							if (property.equals(ages[j].substring(0,ages[j].length()-1))) {
								String getff = "get"
										+ property.substring(0, 1)
												.toUpperCase()
										+ property.substring(1);
								// 通过反射机制生成get方法的 method对象
								Method m1Obj;
								try {
									m1Obj = entity.get(i).getClass()
											.getMethod(getff);
									// 反射机制调用属性的get方法获取对应的值
									Object value = m1Obj.invoke(entity.get(i));
									String fanyi;
									try {
										fanyi = value.toString();
										listSr.add(fanyi);
									} catch (Exception e) {
										System.out.println("连接超时"
												+ e.getMessage());
									}
								} catch (Exception e) {
									e.printStackTrace();
								}
							}
						}

					}
				} else {
					System.out.println("无要翻译的属性");
				}
			}
			try {
				obj = classType.newInstance();
				int cb = 0;
				for (int n = 0; n < listSr.size(); n++) {

					for (int y = 0; y < ages.length; y++) {
						for (int h = 0; h < fields.length; h++) {
							String properx = fields[h].getName();

							String jiesh = "";
							if (ages[y].substring(ages[y].length() - 1,
									ages[y].length()).equals("-")) {
								jiesh = ages[y].substring(0,
										ages[y].length() - 1);
							} else {
								jiesh = ages[y];
							}

							if (properx.equals(jiesh)) {
								// 组装对应属性的set方法
								String methodNaset = "set"
										+ properx.substring(0, 1).toUpperCase()
										+ properx.substring(1);
								Field field;
								Method method;
								field = classType.getDeclaredField(properx);
								method = classType.getMethod(methodNaset,
										field.getType());
								// int number = new Random().nextInt(10) + 1;
								if (cb > listSr.size() - 1) {
									cb = 0;
								}
								int fsc = cb++;
								if (fsc == n)
									method.invoke(obj, listSr.get(n));
							}
						}
					}
				}
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			c.add((T) obj);
		}
		return c;
	}

}
