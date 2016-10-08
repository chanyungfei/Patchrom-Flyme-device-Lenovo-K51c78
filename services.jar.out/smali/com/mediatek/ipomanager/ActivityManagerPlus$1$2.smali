.class Lcom/mediatek/ipomanager/ActivityManagerPlus$1$2;
.super Ljava/lang/Object;
.source "ActivityManagerPlus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ipomanager/ActivityManagerPlus$1;


# direct methods
.method constructor <init>(Lcom/mediatek/ipomanager/ActivityManagerPlus$1;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1$2;->this$1:Lcom/mediatek/ipomanager/ActivityManagerPlus$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1$2;->this$1:Lcom/mediatek/ipomanager/ActivityManagerPlus$1;

    iget-object v0, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mService:Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;
    invoke-static {v0}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$300(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;->launchPowrOffAlarm(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 334
    return-void
.end method
