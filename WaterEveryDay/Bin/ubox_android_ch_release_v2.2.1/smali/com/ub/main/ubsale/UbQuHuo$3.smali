.class Lcom/ub/main/ubsale/UbQuHuo$3;
.super Ljava/lang/Object;
.source "UbQuHuo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/ubsale/UbQuHuo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/ubsale/UbQuHuo;


# direct methods
.method constructor <init>(Lcom/ub/main/ubsale/UbQuHuo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/ubsale/UbQuHuo$3;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ub/main/ubsale/UbQuHuo$3;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    #calls: Lcom/ub/main/ubsale/UbQuHuo;->backDo()V
    invoke-static {v0}, Lcom/ub/main/ubsale/UbQuHuo;->access$5(Lcom/ub/main/ubsale/UbQuHuo;)V

    .line 126
    iget-object v0, p0, Lcom/ub/main/ubsale/UbQuHuo$3;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    const-class v1, Lcom/ub/main/Hall;

    invoke-static {v0, v1}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 127
    return-void
.end method
