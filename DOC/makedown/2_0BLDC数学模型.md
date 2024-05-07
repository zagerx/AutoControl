# BLDC数学模型

## 旋转磁场的生成

## 电压方程

$$
\begin{cases}
V_d = R_s i_d + L_d \frac{{di_d}}{{dt}} - \omega L_q i_q \\
V_q = R_s i_q + L_q \frac{{di_q}}{{dt}} + \omega L_d i_d + \omega \lambda_m
\end{cases}
$$

其中：

- $V_d$ 和 $V_q$ 是DQ坐标系下的直流和交流分量电压；
- $R_s$ 是定子电阻；
- $L_d$ 和 $L_q$ 分别是直轴和交轴的定子电感；
- $i_d$ 和 $i_q$ 分别是DQ坐标系下的直流和交流分量电流；
- $\omega$ 是电机的转速；
- $\lambda_m$ 是电机的磁链；
- $t$是时间。

## 转矩方程（Torque equation）

电机的输出转矩$T$可表示为：

- $T = \frac{3}{2} \cdot p \cdot ( \lambda_m \cdot i_q - \lambda_r \cdot i_d )$

其中，$T$ 是电机的输出转矩

## 运动方程
