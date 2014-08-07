.class Lcom/ub/main/foodsale/FoodQuHuo$2;
.super Ljava/lang/Object;
.source "FoodQuHuo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/foodsale/FoodQuHuo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/foodsale/FoodQuHuo;


# direct methods
.method constructor <init>(Lcom/ub/main/foodsale/FoodQuHuo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodQuHuo$2;->this$0:Lcom/ub/main/foodsale/FoodQuHuo;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodQuHuo$2;->this$0:Lcom/ub/main/foodsale/FoodQuHuo;

    #calls: Lcom/ub/main/foodsale/FoodQuHuo;->backDo()V
    invoke-static {v0}, Lcom/ub/main/foodsale/FoodQuHuo;->access$5(Lcom/ub/main/foodsale/FoodQuHuo;)V

    .line 98
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodQuHuo$2;->this$0:Lcom/ub/main/foodsale/FoodQuHuo;

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodQuHuo;->finish()V

    .line 99
    return-void
.end method
