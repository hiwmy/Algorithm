//
//  LongestPalindromicSubstring.swift
//  MYDynamicProgramming
//
//  Created by wangmingyu02 on 2022/9/23.
//

/*
 给一个字符串s，找到s中最长的回文子串，你可以假设s的最大长度为1000.
 回文串定义：是一个正读和反读都一样的字符串
 eg："babad" -> "bad"，注意aba也是一个有效答案
 eg："cbbd" -> "bb"
 */

/*
 思考过程
 如何判断
 偶数时，最左最右 4位0 1 （2） 3（0 n-1=3>0）(1 n-2=2>1)(2 n-3=1停止)
 奇数时，最左最右 5位 0 1 （2） 3 4 （0 n-1=4>0）(1 n-2=3>1)(2 n-3=2停止)

 穷举
 babad
 b
 ba
 bab 是
 baba 停止
 
 a
 ab
 aba 是
 abad 停止

 b
 ba
 bad 停止

 a
 ad 停止
 */
 
import Foundation

//
