.class Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;
.super Ljava/lang/Object;
.source "FoodProduct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/foodsale/FoodProduct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FoodDataInfo"
.end annotation


# instance fields
.field public foodData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/foodsale/FoodData;",
            ">;"
        }
    .end annotation
.end field

.field private food_date:Ljava/lang/String;

.field private latestTime:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field final synthetic this$0:Lcom/ub/main/foodsale/FoodProduct;


# direct methods
.method private constructor <init>(Lcom/ub/main/foodsale/FoodProduct;)V
    .locals 1
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->foodData:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ub/main/foodsale/FoodProduct;Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 776
    invoke-direct {p0, p1}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;-><init>(Lcom/ub/main/foodsale/FoodProduct;)V

    return-void
.end method


# virtual methods
.method public food_date()Ljava/lang/String;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->food_date:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->latestTime:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->state:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->state:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    :cond_0
    const/4 v0, 0x0

    .line 797
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->state:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public setFoodDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 786
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->food_date:Ljava/lang/String;

    .line 787
    return-void
.end method

.method public setLatestTime(Ljava/lang/String;)V
    .locals 0
    .parameter "latestTime"

    .prologue
    .line 815
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->latestTime:Ljava/lang/String;

    .line 816
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 803
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->state:Ljava/lang/String;

    .line 804
    return-void
.end method
