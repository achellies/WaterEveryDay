.class Lcom/ub/main/foodsale/BuyWaySelect$2;
.super Ljava/lang/Object;
.source "BuyWaySelect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/foodsale/BuyWaySelect;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/foodsale/BuyWaySelect;


# direct methods
.method constructor <init>(Lcom/ub/main/foodsale/BuyWaySelect;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/foodsale/BuyWaySelect$2;->this$0:Lcom/ub/main/foodsale/BuyWaySelect;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ub/main/foodsale/BuyWaySelect$2;->this$0:Lcom/ub/main/foodsale/BuyWaySelect;

    invoke-virtual {v0}, Lcom/ub/main/foodsale/BuyWaySelect;->finish()V

    .line 103
    return-void
.end method
