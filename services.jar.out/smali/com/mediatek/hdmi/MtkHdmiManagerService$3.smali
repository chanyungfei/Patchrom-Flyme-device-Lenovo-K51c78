.class Lcom/mediatek/hdmi/MtkHdmiManagerService$3;
.super Ljava/lang/Object;
.source "MtkHdmiManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleMultiChannel()V
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
    .line 302
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$3;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$3;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # setter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputMode:I
    invoke-static {v0, p2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1202(Lcom/mediatek/hdmi/MtkHdmiManagerService;I)I

    .line 306
    const-string v0, "MtkHdmiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAudioOutputDialog clicked.. which: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$000(Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$3;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->setAudioParameters(Z)V
    invoke-static {v1, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1300(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)V

    .line 308
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 309
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$3;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1402(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 310
    return-void

    .line 307
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
