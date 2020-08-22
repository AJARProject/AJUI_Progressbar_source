<!-- AJUI_ProgressBar.new ( ) -> instance of ProgressBar class  -->

## Description

Exposes the ProgressBar class at the host base. Replace New AJUI_ProgressBar since V18R3

```4d
  AJUI_ProgressBar.new ( ) -> instance
```

| Parameter | Type    | In/Out | Description                    |
| --------- | ------- | ------ | ------------------------------ |
| instance  | object  | out    | instance of ProgressBar class  |

## Example

```4d
  C_Object ($mypb)

  //create a  progessbar and call it
  $mypb:=AJUI_ProgressBar.new()
  $mypb.height(20)
  $mypb.width(400)
  $mypb.value(0)
  $mypb.title("Step 0/3")
  $mypb.animated(False)
  $mypb.name("PB1")
  $mypb.draw()
```
