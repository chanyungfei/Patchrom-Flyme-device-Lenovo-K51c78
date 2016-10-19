.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;
.super Ljava/lang/Object;
.source "SvlteRilArbitrator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

.field final synthetic val$apn:Ljava/lang/String;

.field final synthetic val$authType:Ljava/lang/String;

.field final synthetic val$interfaceId:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$profile:Ljava/lang/String;

.field final synthetic val$protocol:Ljava/lang/String;

.field final synthetic val$radioTechnology:Ljava/lang/String;

.field final synthetic val$result:Landroid/os/Message;

.field final synthetic val$user:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

    iput-object p2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;->val$radioTechnology:Ljava/lang/String;

    iput-object p3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;->val$profile:Ljava/lang/String;

    iput-object p4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;->val$apn:Ljava/lang/String;

    iput-object p5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;->val$user:Ljava/lang/String;

    iput-object p6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;->val$password:Ljava/lang/String;

    iput-object p7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;->val$authType:Ljava/lang/String;

    iput-object p8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;->val$protocol:Ljava/lang/String;

    iput-object p9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;->val$interfaceId:Ljava/lang/String;

    iput-object p10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;->val$result:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;->val$radioTechnology:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;->val$profile:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;->val$apn:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;->val$user:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;->val$password:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;->val$authType:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;->val$protocol:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;->val$interfaceId:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$2;->val$result:Landroid/os/Message;

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 159
    return-void
.end method
