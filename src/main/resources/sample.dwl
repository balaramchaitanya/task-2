%dw 1.0
%var exchangeRate = 1.35
%function processByType(input)
input as :number match {
theArray is :array -> theArray,
theObj is :object -> theObj,
theNum is :number ->
theNum as :string {format: "###"} as :number,
default -> input
}
---

{	
rate : exchangeRate,
processInput : processByType
}
