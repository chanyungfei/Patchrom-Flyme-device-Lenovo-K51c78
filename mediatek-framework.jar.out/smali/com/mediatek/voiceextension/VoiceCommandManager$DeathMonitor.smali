.class final Lcom/mediatek/voiceextension/VoiceCommandManager$DeathMonitor;
.super Ljava/lang/Object;
.source "VoiceCommandManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voiceextension/VoiceCommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeathMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;


# direct methods
.method private constructor <init>(Lcom/mediatek/voiceextension/VoiceCommandManager;)V
    .locals 0

    .prologue
    .line 963
    iput-object p1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$DeathMonitor;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/voiceextension/VoiceCommandManager;Lcom/mediatek/voiceextension/VoiceCommandManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/voiceextension/VoiceCommandManager;
    .param p2, "x1"    # Lcom/mediatek/voiceextension/VoiceCommandManager$1;

    .prologue
    .line 963
    invoke-direct {p0, p1}, Lcom/mediatek/voiceextension/VoiceCommandManager$DeathMonitor;-><init>(Lcom/mediatek/voiceextension/VoiceCommandManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$DeathMonitor;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    const/4 v1, 0x1

    # invokes: Lcom/mediatek/voiceextension/VoiceCommandManager;->handleServiceDisconnected(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$200(Lcom/mediatek/voiceextension/VoiceCommandManager;Z)V

    .line 969
    const-string v0, "VieCmdMgr"

    const-string v1, "DeathMonitor, exception happened int VIE Service!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    return-void
.end method
