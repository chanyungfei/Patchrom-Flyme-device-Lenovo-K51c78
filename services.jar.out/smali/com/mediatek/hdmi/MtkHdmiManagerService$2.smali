.class Lcom/mediatek/hdmi/MtkHdmiManagerService$2;
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
    .line 311
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$2;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 313
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$2;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$2;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputMode:I
    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1200(Lcom/mediatek/hdmi/MtkHdmiManagerService;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->setAudioParameters(Z)V
    invoke-static {v1, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1300(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)V

    .line 314
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 315
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$2;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1402(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 316
    return-void

    .line 313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
