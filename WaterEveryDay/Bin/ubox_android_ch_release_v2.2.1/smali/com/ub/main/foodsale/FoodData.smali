.class public Lcom/ub/main/foodsale/FoodData;
.super Ljava/lang/Object;
.source "FoodData.java"


# instance fields
.field private food_material:Ljava/lang/String;

.field private food_name:Ljava/lang/String;

.field private goods_num:I

.field private id:Ljava/lang/String;

.field private picBig:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private sellPrice:Ljava/lang/String;

.field private unique:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    :try_start_0
    const-string v1, "unique"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodData;->unique:Ljava/lang/String;

    .line 11
    const-string v1, "picBig"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodData;->picBig:Ljava/lang/String;

    .line 12
    const-string v1, "sellPrice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodData;->sellPrice:Ljava/lang/String;

    .line 13
    const-string v1, "food_material"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodData;->food_material:Ljava/lang/String;

    .line 14
    const-string v1, "price"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodData;->price:Ljava/lang/String;

    .line 15
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodData;->id:Ljava/lang/String;

    .line 16
    const-string v1, "goods_num"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ub/main/foodsale/FoodData;->goods_num:I

    .line 17
    const-string v1, "food_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodData;->food_name:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 20
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public food_material()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodData;->food_material:Ljava/lang/String;

    return-object v0
.end method

.method public food_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodData;->food_name:Ljava/lang/String;

    return-object v0
.end method

.method public goods_num()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/ub/main/foodsale/FoodData;->goods_num:I

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public picBig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodData;->picBig:Ljava/lang/String;

    return-object v0
.end method

.method public price()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodData;->price:Ljava/lang/String;

    return-object v0
.end method

.method public sellPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodData;->sellPrice:Ljava/lang/String;

    return-object v0
.end method

.method public unique()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodData;->unique:Ljava/lang/String;

    return-object v0
.end method
