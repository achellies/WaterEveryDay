.class Lcom/ub/main/foodsale/FoodProduct$4;
.super Ljava/lang/Object;
.source "FoodProduct.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/foodsale/FoodProduct;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/foodsale/FoodProduct;


# direct methods
.method constructor <init>(Lcom/ub/main/foodsale/FoodProduct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodProduct$4;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct$4;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    #getter for: Lcom/ub/main/foodsale/FoodProduct;->dayTypeList:[Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/foodsale/FoodProduct;->access$3(Lcom/ub/main/foodsale/FoodProduct;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct$4;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    #getter for: Lcom/ub/main/foodsale/FoodProduct;->dayTypeList:[Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/foodsale/FoodProduct;->access$3(Lcom/ub/main/foodsale/FoodProduct;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 460
    .local v6, days:[Ljava/lang/String;
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct$4;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    #getter for: Lcom/ub/main/foodsale/FoodProduct;->rightTitleBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/foodsale/FoodProduct;->access$4(Lcom/ub/main/foodsale/FoodProduct;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v2, v6, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u6708"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v6, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u65e5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct$4;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodProduct$4;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    #getter for: Lcom/ub/main/foodsale/FoodProduct;->dayTypeList:[Ljava/lang/String;
    invoke-static {v1}, Lcom/ub/main/foodsale/FoodProduct;->access$3(Lcom/ub/main/foodsale/FoodProduct;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/ub/main/foodsale/FoodProduct;->selectedDay:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/ub/main/foodsale/FoodProduct;->access$5(Lcom/ub/main/foodsale/FoodProduct;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct$4;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_GETVMINFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 464
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodProduct$4;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    #getter for: Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/ub/main/foodsale/FoodProduct;->access$6(Lcom/ub/main/foodsale/FoodProduct;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "vmId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/ub/main/foodsale/FoodProduct$4;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    #getter for: Lcom/ub/main/foodsale/FoodProduct;->selectedDay:Ljava/lang/String;
    invoke-static {v3}, Lcom/ub/main/foodsale/FoodProduct;->access$7(Lcom/ub/main/foodsale/FoodProduct;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ub/main/util/NetConfig;->createFOOD_getVmInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 465
    iget-object v3, p0, Lcom/ub/main/foodsale/FoodProduct$4;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    iget-object v4, p0, Lcom/ub/main/foodsale/FoodProduct$4;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    .line 466
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u4ea7\u54c1\u4fe1\u606f..."

    .line 463
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/foodsale/FoodProduct;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 468
    .end local v6           #days:[Ljava/lang/String;
    :cond_0
    return-void
.end method
