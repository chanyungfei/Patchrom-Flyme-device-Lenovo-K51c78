.class final Lcom/lenovo/lps/reaper/sdk/message/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;


# direct methods
.method public constructor <init>(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->a:I

    iput-object p3, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->f:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->a:I

    iput-object p3, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->d:Ljava/lang/String;

    iput-wide p6, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->e:J

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->f:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const-string v0, "DownloadAppMsg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msgId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DownloadAppMsg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msgHead: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DownloadAppMsg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msgBody: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DownloadAppMsg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msgType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->f:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->f:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    instance-of v0, v0, Lcom/lenovo/lps/reaper/sdk/message/OnMsgListenerV3;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->f:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/message/OnMsgListenerV3;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->e:J

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/lps/reaper/sdk/message/OnMsgListenerV3;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->f:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
