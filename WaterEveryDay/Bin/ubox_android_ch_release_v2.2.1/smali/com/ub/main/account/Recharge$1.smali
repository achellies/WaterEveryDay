.class Lcom/ub/main/account/Recharge$1;
.super Ljava/lang/Object;
.source "Recharge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/account/Recharge;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/account/Recharge;


# direct methods
.method constructor <init>(Lcom/ub/main/account/Recharge;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/account/Recharge$1;->this$0:Lcom/ub/main/account/Recharge;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ub/main/account/Recharge$1;->this$0:Lcom/ub/main/account/Recharge;

    invoke-virtual {v0}, Lcom/ub/main/account/Recharge;->finish()V

    .line 105
    return-void
.end method
