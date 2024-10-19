import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Scanner;
import java.util.StringTokenizer;

public class Main 
{
    public static int test(String x) {
        s=s.trim();
        StringBuffer bf=new StringBuffer();
        for(int i=0;i<s.length();i++)
        {
            if(s.charAt(i)=='-'&&i==0)
                bf.append("-");
            else if(s.charAt(i)<='9'&&s.charAt(i)>='0')
                bf.append(s.charAt(i)+"");
            else
                break;
        }
        return Integer.parseInt(bf.toString());
    }

    public static void main(String... args)
        throws Exception
    {
        System.out.println(isPalindrome(1001));
    }
}