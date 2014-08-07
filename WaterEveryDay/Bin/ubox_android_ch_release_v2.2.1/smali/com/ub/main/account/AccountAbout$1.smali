.class Lcom/ub/main/account/AccountAbout$1;
.super Ljava/lang/Object;
.source "AccountAbout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/account/AccountAbout;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/account/AccountAbout;


# direct methods
.method constructor <init>(Lcom/ub/main/account/AccountAbout;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/account/AccountAbout$1;->this$0:Lcom/ub/main/account/AccountAbout;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ub/main/account/AccountAbout$1;->this$0:Lcom/ub/main/account/AccountAbout;

    invoke-virtual {v0}, Lcom/ub/main/account/AccountAbout;->finish()V

    .line 54
    return-void
.end method
