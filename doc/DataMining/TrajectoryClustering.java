package test;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

//�켣����
public class TrajectoryClustering {
	
	//�����������ÿ���û������
	public static void main(String[] args) {
		String file = "E:/use_imfor.csv";
		Map userMap = readCsvFile(file);
		Map userMap1 = new HashMap();
		Set<Entry> entrySet = userMap.entrySet();
		Set<Entry> entrySet1 = userMap1.entrySet();
		String uname = "";
		String track = "";
		String track1 = "";
		String[] traArr = null;
		int i = 0;

		//���켣ת���õ�userMap1
		for(Entry entry : entrySet)
		{
			Set traSet = new HashSet();
			track1 ="";
			uname = entry.getKey().toString();
			track = entry.getValue().toString().split("\t")[0];
			if(track.contains(",0"))
				track = track.substring(0, track.indexOf(",0"));
			traArr = track.split(",");
			for(String site : traArr)
				traSet.add(site);
			if(traArr.length<5)
			{
				for(i = 1;i<=traSet.size();++i)
				{
					track1 = track1 + ","+i;
				}
				for(i=1;i<=5-traSet.size();++i)
				{
					track1 = track1 + ",1";
				}
				track1 = track1.substring(1);
			}
			else
			{
				for(i = 1;i<=traSet.size();++i)
				{
					track1 = track1 + ","+i;
				}
				for(i=1;i<=5-traSet.size();++i)
				{
					track1 = track1 + ",1";
				}
				track1 = track1.substring(1);
			}

			userMap1.put(uname, track1);
		}
		

		String tra1 = "1,2,3,1,1";
		String tra2 = "1,2,3,4,5";

		//����켣��֮��Distance������(һ�α���),�õ�classMap
		Map classMap = new HashMap();
		for (Entry entry : entrySet1) {
			uname = entry.getKey().toString();
			track = entry.getValue().toString();
			
			if(EditDistance(track, tra1) < EditDistance(track, tra2))
				classMap.put(uname, 1);
			else 
				classMap.put(uname, 2);

		}
		printMap(classMap);
	}
    
	
	//��ȡ�û��ļ��ĺ���
	public static Map readCsvFile(String filePath) {
		try {
			Map userMap = new HashMap();
			int i = 0;
			int row = 0;
			String username = "";
			String geo = "";
			String room = "";
			String encoding = "GBK";
			File file = new File(filePath);
			if (file.isFile() && file.exists()) {
				InputStreamReader read = new InputStreamReader(new DataInputStream(new FileInputStream(file)),
						encoding);
				BufferedReader bufferedReader = new BufferedReader(read);
				String lineTxt = null;
				while ((lineTxt = bufferedReader.readLine()) != null) {
					row++;
					String[] lineArr = lineTxt.split(",");
					if (lineTxt.contains("order")) {
						username = lineArr[0];
					} else if (lineTxt.contains("geog")) {
						if (lineArr.length <= 6) {
							for (i = 1; i < lineArr.length; ++i) {
								geo = geo + "," + lineArr[i];
							}
							for (i = 1; i <= 6 - lineArr.length; ++i) {
								geo = geo + "," + "0";
							}
						} else {
							for (i = lineArr.length - 5; i <= lineArr.length - 1; ++i) {
								geo = geo + "," + lineArr[i];
							}
						}
						geo = geo.substring(1);
					} else if (lineTxt.contains("room")) {
						for (i = 1; i < lineArr.length; ++i) {
							room = room + "," + lineArr[i];
						}
						room = room.substring(1);
					}
					if (row % 3 == 0) {
						userMap.put(username, geo + "\t" + room);
						geo = "";
						room = "";
					}
				}
				read.close();
				return userMap;
			} else {
				System.out.println("�Ҳ���ָ�����ļ�");
				return null;
			}
		} catch (Exception e) {
			System.out.println("��ȡ�ļ����ݳ���");
			e.printStackTrace();
			return null;
		}
	}
	
	//��ӡ�û����ĺ���
	public static void printMap(Map map) {
		Set<Entry> entryseSet = map.entrySet();
		for (Entry entry : entryseSet) {
			System.out.println("�û�:"+entry.getKey() + "\t���:" + entry.getValue());
		}
	}

	//�������û�֮��Ĺ켣����ĺ������ݹ飩
	//����Ϊ�����û��켣����
	//���Ϊ���������������ƶȣ�ԽС��ʾԽ���ƣ�
	public static int EditDistance(String Tr1, String Tr2) {
		String[] TrArr1 = Tr1.split(",");
		String[] TrArr2 = Tr2.split(",");
		String Tr1FirstRest = "";
		String Tr2FirstRest = "";
		if (Tr1.equals(""))// if |Tr1|==0
		{
			if (!Tr2.equals("")) {
				return TrArr2.length;
			} else {
				return 0;
			}
		}
		if (Tr2.equals(""))// if |Tr2|==0
		{

			if (!Tr1.equals("")) {
				return TrArr1.length;
			} else {
				return 0;
			}
		}
		if (Tr1.contains(","))
			Tr1FirstRest = Tr1.substring(Tr1.indexOf(",") + 1);
		else
			Tr1FirstRest = "";
		if (Tr2.contains(","))
			Tr2FirstRest = Tr2.substring(Tr2.indexOf(",") + 1);
		else
			Tr2FirstRest = "";
		if (TrArr1[0].equals(TrArr2[0]))// if first(Tr1)==first(Tr2)
		{
			return EditDistance(Tr1FirstRest, Tr2FirstRest);
		} else// otherwise
		{
			return Min(EditDistance(Tr1FirstRest, Tr2FirstRest) + 1, EditDistance(Tr1FirstRest, Tr2) + 1,
					EditDistance(Tr1, Tr2FirstRest) + 1);
		}
	}

	
	private static int Min(int i, int j, int k) {
		int min = 10000;
		if (i < min)
			min = i;
		if (j < min)
			min = j;
		if (k < min)
			min = k;
		return min;
	}
}
