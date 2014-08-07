.class Lcom/ub/main/ubsale/UbQuHuo$2;
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
    iput-object p1, p0, Lcom/ub/main/ubsale/UbQuHuo$2;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ub/main/ubsale/UbQuHuo$2;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    #calls: Lcom/ub/main/ubsale/UbQuHuo;->backDo()V
    invoke-static {v0}, Lcom/ub/main/ubsale/UbQuHuo;->access$5(Lcom/ub/main/ubsale/UbQuHuo;)V

    .line 119
    iget-object v0, p0, Lcom/ub/main/ubsale/UbQuHuo$2;->this$0:Lcom/ub/main/ubsale/UbQuHuo;

    invoke-virtual {v0}, Lcom/ub/main/ubsale/UbQuHuo;->finish()V

    .line 120
    return-void
.end method
