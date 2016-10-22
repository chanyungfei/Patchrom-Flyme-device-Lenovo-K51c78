.class Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;
.super Lcom/android/internal/util/State;
.source "EpdgConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epdg/EpdgConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgDefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/epdg/EpdgConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/epdg/EpdgConnection;)V
    .locals 0

    .prologue
    .line 941
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/epdg/EpdgConnection;Lcom/mediatek/epdg/EpdgConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p2, "x1"    # Lcom/mediatek/epdg/EpdgConnection$1;

    .prologue
    .line 941
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;-><init>(Lcom/mediatek/epdg/EpdgConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 945
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    const-string v1, "EpdgDefaultState: enter"

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->access$000(Lcom/mediatek/epdg/EpdgConnection;Ljava/lang/String;)V

    .line 948
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 952
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    const-string v1, "EpdgDefaultState: exit"

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->access$100(Lcom/mediatek/epdg/EpdgConnection;Ljava/lang/String;)V

    .line 954
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 958
    const/4 v0, 0x1

    .line 961
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDefault msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/epdg/EpdgConnection;->access$200(Lcom/mediatek/epdg/EpdgConnection;Ljava/lang/String;)V

    .line 973
    return v0
.end method
