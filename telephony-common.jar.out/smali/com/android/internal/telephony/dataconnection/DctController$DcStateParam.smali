.class public Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;
.super Ljava/lang/Object;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DcStateParam"
.end annotation


# instance fields
.field private mMessage:Landroid/os/Message;

.field private mNeedCheck:Z

.field private mPhoneId:I

.field private mReason:Ljava/lang/String;

.field private mRegistrant:Landroid/os/Registrant;

.field private mState:Ljava/lang/String;

.field private mUser:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "phoneId"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "msg"    # Landroid/os/Message;

    .prologue
    .line 1337
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1338
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mState:Ljava/lang/String;

    .line 1339
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mPhoneId:I

    .line 1340
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mReason:Ljava/lang/String;

    .line 1341
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mMessage:Landroid/os/Message;

    .line 1342
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "needCheckDisconnect"    # Z

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1345
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mUser:Ljava/lang/String;

    .line 1346
    iput-boolean p3, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mNeedCheck:Z

    .line 1347
    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)Landroid/os/Registrant;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mRegistrant:Landroid/os/Registrant;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;Landroid/os/Registrant;)Landroid/os/Registrant;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;
    .param p1, "x1"    # Landroid/os/Registrant;

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mRegistrant:Landroid/os/Registrant;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mUser:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    .line 1327
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mNeedCheck:Z

    return v0
.end method


# virtual methods
.method public confirmPreCheckDetach()Z
    .locals 2

    .prologue
    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "confirmPreCheckDetach, msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 1362
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mMessage:Landroid/os/Message;

    if-nez v0, :cond_0

    .line 1363
    const/4 v0, 0x0

    .line 1366
    :goto_0
    return v0

    .line 1365
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1366
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 1354
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mPhoneId:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPhoneId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needCheck = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mNeedCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Registrant = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->mRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
