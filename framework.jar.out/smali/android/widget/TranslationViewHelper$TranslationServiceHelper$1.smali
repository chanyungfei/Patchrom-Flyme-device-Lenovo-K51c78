.class Landroid/widget/TranslationViewHelper$TranslationServiceHelper$1;
.super Ljava/lang/Object;
.source "TranslationViewHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->connectToService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;


# direct methods
.method constructor <init>(Landroid/widget/TranslationViewHelper$TranslationServiceHelper;)V
    .locals 0

    .prologue
    .line 1008
    iput-object p1, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper$1;->this$1:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1017
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper$1;->this$1:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    invoke-static {p2}, Lcom/lenovo/component/translationservice/ITranslationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/component/translationservice/ITranslationService;

    move-result-object v1

    # setter for: Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->mTranslationService:Lcom/lenovo/component/translationservice/ITranslationService;
    invoke-static {v0, v1}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->access$2002(Landroid/widget/TranslationViewHelper$TranslationServiceHelper;Lcom/lenovo/component/translationservice/ITranslationService;)Lcom/lenovo/component/translationservice/ITranslationService;

    .line 1018
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper$1;->this$1:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    invoke-virtual {v0}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->getNetworkTrafficConfirmedStateFromRemoteService()V

    .line 1019
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 1012
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$TranslationServiceHelper$1;->this$1:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    const/4 v1, 0x0

    # setter for: Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->mTranslationService:Lcom/lenovo/component/translationservice/ITranslationService;
    invoke-static {v0, v1}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->access$2002(Landroid/widget/TranslationViewHelper$TranslationServiceHelper;Lcom/lenovo/component/translationservice/ITranslationService;)Lcom/lenovo/component/translationservice/ITranslationService;

    .line 1013
    return-void
.end method
