.class Landroid/media/AudioService$Parameter;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Parameter"
.end annotation


# instance fields
.field public mDevice:I

.field public mIsUsb:Z

.field public mName:Ljava/lang/String;

.field public mState:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;IIZLjava/lang/String;)V
    .locals 0
    .param p2, "state"    # I
    .param p3, "device"    # I
    .param p4, "isUsb"    # Z
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 1314
    iput-object p1, p0, Landroid/media/AudioService$Parameter;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1315
    iput p2, p0, Landroid/media/AudioService$Parameter;->mState:I

    .line 1316
    iput p3, p0, Landroid/media/AudioService$Parameter;->mDevice:I

    .line 1317
    iput-boolean p4, p0, Landroid/media/AudioService$Parameter;->mIsUsb:Z

    .line 1318
    iput-object p5, p0, Landroid/media/AudioService$Parameter;->mName:Ljava/lang/String;

    .line 1319
    return-void
.end method
