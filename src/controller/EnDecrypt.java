package controller;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public abstract class EnDecrypt {
	
	public static byte[] myEncryptText(String text) {
		try {
			String key = "Bar12345Bar12345";
			// Create key and cipher
			SecretKeySpec aesKey = new SecretKeySpec(key.getBytes(), "AES");
			Cipher cipher = Cipher.getInstance("AES");

			// encrypt the text
			cipher.init(Cipher.ENCRYPT_MODE, aesKey);
			byte[] encrypted = cipher.doFinal(text.getBytes());
			//System.err.println(new String(encrypted));

			return encrypted;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static String myDecryptText(byte[]  encrypted) {

		try {
			String key = "Bar12345Bar12345";

			// Create key and cipher
			SecretKeySpec aesKey = new SecretKeySpec(key.getBytes(), "AES");
			Cipher cipher = Cipher.getInstance("AES");

			// decrypt the text
			cipher.init(Cipher.DECRYPT_MODE, aesKey);
			String decrypted = new String(cipher.doFinal(encrypted));
			//System.err.println(decrypted);
			return decrypted;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	}

}
