/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ccchk08j2luckynumber;
import java.util.Scanner;//scanner import

/**
 *
 * @author xiaocai
 */
public class CCCHK08J2LuckyNumber {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner UI = new Scanner(System.in);
        // TODO code application logic here
        String Input;
        int N;
        String X;
        Input = UI.next();
        N = Integer.parseInt(Input);
        for (int i = 1; i <= N; i++){
            Input = UI.next();
            X = Input;
            do{
                int NewValue = 0;
                for (int ind = 0; ind < X.length(); ind ++){
                    //System.out.println(X.substring(ind,ind+1));
                    NewValue += Integer.parseInt(X.substring(ind,ind+1));
                }
                X = Integer.toString (NewValue);
            }while(Integer.parseInt(X) > 9);
            System.out.println(X);
        }
        
    }//Void End
    
}
