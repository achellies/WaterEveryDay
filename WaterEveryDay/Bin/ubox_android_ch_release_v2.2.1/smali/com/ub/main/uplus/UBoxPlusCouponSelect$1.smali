.class Lcom/ub/main/uplus/UBoxPlusCouponSelect$1;
.super Ljava/lang/Object;
.source "UBoxPlusCouponSelect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/uplus/UBoxPlusCouponSelect;->initControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;


# direct methods
.method constructor <init>(Lcom/ub/main/uplus/UBoxPlusCouponSelect;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect$1;->this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect$1;->this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;

    #getter for: Lcom/ub/main/uplus/UBoxPlusCouponSelect;->isExchange:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->access$0(Lcom/ub/main/uplus/UBoxPlusCouponSelect;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect$1;->this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;

    #getter for: Lcom/ub/main/uplus/UBoxPlusCouponSelect;->isExchange:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->access$0(Lcom/ub/main/uplus/UBoxPlusCouponSelect;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect$1;->this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->setResult(I)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect$1;->this$0:Lcom/ub/main/uplus/UBoxPlusCouponSelect;

    invoke-virtual {v0}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->finish()V

    .line 111
    return-void
.end method
