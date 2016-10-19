.class public Lcom/mediatek/ipomanager/ActivityManagerPlus$BootEndIntentReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ipomanager/ActivityManagerPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BootEndIntentReceiver"
.end annotation


# instance fields
.field private mAmPlus:Lcom/mediatek/ipomanager/ActivityManagerPlus;

.field private mCause:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mediatek/ipomanager/ActivityManagerPlus;Ljava/lang/String;)V
    .locals 1
    .param p1, "amPlus"    # Lcom/mediatek/ipomanager/ActivityManagerPlus;
    .param p2, "cause"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 420
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 417
    iput-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$BootEndIntentReceiver;->mAmPlus:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    .line 418
    iput-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$BootEndIntentReceiver;->mCause:Ljava/lang/String;

    .line 421
    iput-object p1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$BootEndIntentReceiver;->mAmPlus:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    .line 422
    iput-object p2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$BootEndIntentReceiver;->mCause:Ljava/lang/String;

    .line 423
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .prologue
    .line 430
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$BootEndIntentReceiver;->mAmPlus:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$BootEndIntentReceiver;->mCause:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->monitorBootReceiver(ZLjava/lang/String;)V

    .line 432
    return-void
.end method
