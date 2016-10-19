.class Lcom/mediatek/hdmi/MtkHdmiManagerService$6;
.super Ljava/lang/Object;
.source "MtkHdmiManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/hdmi/MtkHdmiManagerService;->initial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$6;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 517
    sget-boolean v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_DRM_KEY_MNG_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 518
    const-string v0, "MtkHdmiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDrmKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$6;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->setDrmKey()Z
    invoke-static {v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$2000(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$000(Ljava/lang/String;Ljava/lang/Object;)V

    .line 522
    :goto_0
    return-void

    .line 520
    :cond_0
    const-string v0, "MtkHdmiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHdcpKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$6;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->setHdcpKey()Z
    invoke-static {v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$2100(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$000(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
