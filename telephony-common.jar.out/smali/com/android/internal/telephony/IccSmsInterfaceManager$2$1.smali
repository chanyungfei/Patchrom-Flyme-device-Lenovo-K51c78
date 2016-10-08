.class Lcom/android/internal/telephony/IccSmsInterfaceManager$2$1;
.super Ljava/lang/Thread;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/IccSmsInterfaceManager$2;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager$2;)V
    .locals 0

    .prologue
    .line 1881
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$2$1;->this$1:Lcom/android/internal/telephony/IccSmsInterfaceManager$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1883
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$2$1;->this$1:Lcom/android/internal/telephony/IccSmsInterfaceManager$2;

    iget-object v1, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager$2;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete message on sub "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$2$1;->this$1:Lcom/android/internal/telephony/IccSmsInterfaceManager$2;

    iget-object v3, v3, Lcom/android/internal/telephony/IccSmsInterfaceManager$2;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1884
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$2$1;->this$1:Lcom/android/internal/telephony/IccSmsInterfaceManager$2;

    iget-object v1, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager$2;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1885
    .local v0, "response":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$2$1;->this$1:Lcom/android/internal/telephony/IccSmsInterfaceManager$2;

    iget-object v1, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager$2;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, -0x1

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnSim(ILandroid/os/Message;)V

    .line 1886
    return-void
.end method
