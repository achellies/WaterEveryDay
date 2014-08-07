.class Lcom/ub/main/foodsale/FoodYudingSuccess$1;
.super Ljava/lang/Object;
.source "FoodYudingSuccess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/foodsale/FoodYudingSuccess;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/foodsale/FoodYudingSuccess;


# direct methods
.method constructor <init>(Lcom/ub/main/foodsale/FoodYudingSuccess;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodYudingSuccess$1;->this$0:Lcom/ub/main/foodsale/FoodYudingSuccess;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodYudingSuccess$1;->this$0:Lcom/ub/main/foodsale/FoodYudingSuccess;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ub/main/foodsale/FoodYudingSuccess;->setResult(I)V

    .line 61
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodYudingSuccess$1;->this$0:Lcom/ub/main/foodsale/FoodYudingSuccess;

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodYudingSuccess;->finish()V

    .line 62
    return-void
.end method
