.class Lcom/ub/main/uplus/UBoxPlusMain$3;
.super Ljava/lang/Object;
.source "UBoxPlusMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/uplus/UBoxPlusMain;->createCoupnFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/uplus/UBoxPlusMain;


# direct methods
.method constructor <init>(Lcom/ub/main/uplus/UBoxPlusMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/uplus/UBoxPlusMain$3;->this$0:Lcom/ub/main/uplus/UBoxPlusMain;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 280
    iget-object v2, p0, Lcom/ub/main/uplus/UBoxPlusMain$3;->this$0:Lcom/ub/main/uplus/UBoxPlusMain;

    #getter for: Lcom/ub/main/uplus/UBoxPlusMain;->tempCell:Lcom/ub/main/uplus/UPlusTaskCell;
    invoke-static {v2}, Lcom/ub/main/uplus/UBoxPlusMain;->access$1(Lcom/ub/main/uplus/UBoxPlusMain;)Lcom/ub/main/uplus/UPlusTaskCell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ub/main/uplus/UPlusTaskCell;->appUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 281
    .local v1, url:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 282
    .local v0, it:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ub/main/uplus/UBoxPlusMain$3;->this$0:Lcom/ub/main/uplus/UBoxPlusMain;

    invoke-virtual {v2, v0}, Lcom/ub/main/uplus/UBoxPlusMain;->startActivity(Landroid/content/Intent;)V

    .line 285
    return-void
.end method
