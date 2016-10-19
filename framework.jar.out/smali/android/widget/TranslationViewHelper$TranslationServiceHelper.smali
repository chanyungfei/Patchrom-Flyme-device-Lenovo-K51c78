.class final Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
.super Ljava/lang/Object;
.source "TranslationViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TranslationViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TranslationServiceHelper"
.end annotation


# instance fields
.field private mTranslationQueryListener:Lcom/lenovo/component/translationservice/ITranslationQueryListener;

.field private mTranslationService:Lcom/lenovo/component/translationservice/ITranslationService;

.field private mTranslationServiceConnection:Landroid/content/ServiceConnection;

.field final synthetic this$0:Landroid/widget/TranslationViewHelper;


# direct methods
.method constructor <init>(Landroid/widget/TranslationViewHelper;)V
    .locals 0

    .prologue
    .line 995
    iput-object p1, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->this$0:Landroid/widget/TranslationViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2002(Landroid/widget/TranslationViewHelper$TranslationServiceHelper;Lcom/lenovo/component/translationservice/ITranslationService;)Lcom/lenovo/component/translationservice/ITranslationService;
    .locals 0
    .param p0, "x0"    # Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
    .param p1, "x1"    # Lcom/lenovo/component/translationservice/ITranslationService;

    .prologue
    .line 995
    iput-object p1, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->mTranslationService:Lcom/lenovo/component/translationservice/ITranslationService;

    return-object p1
.end method

.method private getNewTranslationQueryListener()Lcom/lenovo/component/translationservice/ITranslationQueryListener;
    .locals 2

    .prologue
    .line 1151
    new-instance v0, Landroid/widget/TranslationViewHelper$TranslationQueryListenerImpl;

    iget-object v1, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->this$0:Landroid/widget/TranslationViewHelper;

    invoke-direct {v0, v1}, Landroid/widget/TranslationViewHelper$TranslationQueryListenerImpl;-><init>(Landroid/widget/TranslationViewHelper;)V

    return-object v0
.end method


# virtual methods
.method public connectToService()V
    .locals 4

    .prologue
    .line 1007
    iget-object v1, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->mTranslationServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->mTranslationService:Lcom/lenovo/component/translationservice/ITranslationService;

    if-nez v1, :cond_1

    .line 1008
    :cond_0
    new-instance v1, Landroid/widget/TranslationViewHelper$TranslationServiceHelper$1;

    invoke-direct {v1, p0}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper$1;-><init>(Landroid/widget/TranslationViewHelper$TranslationServiceHelper;)V

    iput-object v1, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->mTranslationServiceConnection:Landroid/content/ServiceConnection;

    .line 1023
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TranslationViewHelper;->access$400(Landroid/widget/TranslationViewHelper;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x9090062

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1025
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lenovo.component.translationservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1027
    iget-object v1, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TranslationViewHelper;->access$400(Landroid/widget/TranslationViewHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->mTranslationServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1028
    return-void
.end method

.method public disconnectService()V
    .locals 3

    .prologue
    .line 1040
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->mTranslationService:Lcom/lenovo/component/translationservice/ITranslationService;

    .line 1041
    iget-object v1, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TranslationViewHelper;->access$400(Landroid/widget/TranslationViewHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->mTranslationServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1042
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->mTranslationQueryListener:Lcom/lenovo/component/translationservice/ITranslationQueryListener;

    .line 1043
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->mTranslationServiceConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    :goto_0
    return-void

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Landroid/widget/TranslationViewHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/TranslationViewHelper;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Translation : disconnectService : unbind failed. check the later log for more informaiton"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getNetworkTrafficConfirmedStateFromRemoteService()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1139
    # getter for: Landroid/widget/TranslationViewHelper;->isAlwaysAllowNetworkTraffic:Z
    invoke-static {}, Landroid/widget/TranslationViewHelper;->access$2100()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1141
    :try_start_0
    iget-object v2, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->mTranslationService:Lcom/lenovo/component/translationservice/ITranslationService;

    invoke-interface {v2}, Lcom/lenovo/component/translationservice/ITranslationService;->isNeedToShowNetworkTrafficWarning()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    # setter for: Landroid/widget/TranslationViewHelper;->isAlwaysAllowNetworkTraffic:Z
    invoke-static {v1}, Landroid/widget/TranslationViewHelper;->access$2102(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    :cond_0
    :goto_1
    return-void

    .line 1141
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1142
    :catch_0
    move-exception v0

    .line 1143
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Landroid/widget/TranslationViewHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/TranslationViewHelper;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Translation : getNetworkTrafficConfirmedStateFromRemoteService : RemoteException has been thrown. check later log for more information."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public isNetworkConnected()Z
    .locals 4

    .prologue
    .line 1114
    const/4 v1, 0x0

    .line 1117
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
    invoke-static {v2}, Landroid/widget/TranslationViewHelper;->access$000(Landroid/widget/TranslationViewHelper;)Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->mTranslationService:Lcom/lenovo/component/translationservice/ITranslationService;

    invoke-interface {v2}, Lcom/lenovo/component/translationservice/ITranslationService;->isNetworkConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1124
    :goto_0
    return v1

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Landroid/widget/TranslationViewHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/TranslationViewHelper;->access$1000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Translation : isNetworkConnected : RemoteException has been thrown. check later log for more information."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isServiceConnected()Z
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$000(Landroid/widget/TranslationViewHelper;)Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->mTranslationService:Lcom/lenovo/component/translationservice/ITranslationService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNetworkTrafficWarningConfirmState(I)V
    .locals 3
    .param p1, "confirmState"    # I

    .prologue
    .line 1092
    :try_start_0
    iget-object v1, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->mTranslationService:Lcom/lenovo/component/translationservice/ITranslationService;

    invoke-interface {v1, p1}, Lcom/lenovo/component/translationservice/ITranslationService;->setNetworkTrafficWarningConfirmState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1098
    :goto_0
    return-void

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Landroid/widget/TranslationViewHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/TranslationViewHelper;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Translation : setNetworkTrafficWarningConfirmState : RemoteException has been thrown. check later log for more information"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startQuery(Ljava/lang/String;)V
    .locals 2
    .param p1, "wordToTranslate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1061
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->getNewTranslationQueryListener()Lcom/lenovo/component/translationservice/ITranslationQueryListener;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->mTranslationQueryListener:Lcom/lenovo/component/translationservice/ITranslationQueryListener;

    .line 1062
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->mTranslationService:Lcom/lenovo/component/translationservice/ITranslationService;

    iget-object v1, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->mTranslationQueryListener:Lcom/lenovo/component/translationservice/ITranslationQueryListener;

    invoke-interface {v0, p1, v1}, Lcom/lenovo/component/translationservice/ITranslationService;->startQuery(Ljava/lang/String;Lcom/lenovo/component/translationservice/ITranslationQueryListener;)V

    .line 1063
    return-void
.end method

.method public startTranslationApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "wordToTranslate"    # Ljava/lang/String;

    .prologue
    .line 1076
    :try_start_0
    iget-object v1, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->mTranslationService:Lcom/lenovo/component/translationservice/ITranslationService;

    invoke-interface {v1, p1}, Lcom/lenovo/component/translationservice/ITranslationService;->startTranslationApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    :goto_0
    return-void

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Landroid/widget/TranslationViewHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/TranslationViewHelper;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Translation : startTranslationApp : RemoteException has been thrown. check later log for more information"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
