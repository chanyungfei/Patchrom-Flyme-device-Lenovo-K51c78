.class public Landroid/widget/TranslationNetworkTrafficDialogHelper;
.super Ljava/lang/Object;
.source "TranslationNetworkTrafficDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;
    }
.end annotation


# static fields
.field public static final CONFIRMED:I = 0x1000

.field public static final CONFIRMED_ONCE:I = 0x1

.field public static final EDITOR_TRANSLATE_NETWORK_CONFIRM:Ljava/lang/String; = "EDITOR_TRANSLATE_NETWORK_CONFIRM"

.field public static final NOT_CONFIRMED:I


# instance fields
.field private isConfirmAlwaysUseNetworkTraffic:Z

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

.field private mDialogContentView:Landroid/widget/LinearLayout;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/TranslationViewHelper$TranslationServiceHelper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainThreadHandler"    # Landroid/os/Handler;
    .param p3, "translationServiceHelper"    # Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper;->isConfirmAlwaysUseNetworkTraffic:Z

    .line 84
    iput-object p1, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper;->mMainThreadHandler:Landroid/os/Handler;

    .line 86
    iput-object p3, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    .line 87
    return-void
.end method

.method static synthetic access$000(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationNetworkTrafficDialogHelper;

    .prologue
    .line 25
    iget-object v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper;->mDialog:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/TranslationNetworkTrafficDialogHelper;Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;)Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;
    .locals 0
    .param p0, "x0"    # Landroid/widget/TranslationNetworkTrafficDialogHelper;
    .param p1, "x1"    # Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    .prologue
    .line 25
    iput-object p1, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper;->mDialog:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    return-object p1
.end method

.method static synthetic access$100(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationNetworkTrafficDialogHelper;

    .prologue
    .line 25
    iget-object v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationNetworkTrafficDialogHelper;

    .prologue
    .line 25
    iget-object v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper;->mDialogContentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/TranslationNetworkTrafficDialogHelper;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Landroid/widget/TranslationNetworkTrafficDialogHelper;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 25
    iput-object p1, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper;->mDialogContentView:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$300(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationNetworkTrafficDialogHelper;

    .prologue
    .line 25
    iget-boolean v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper;->isConfirmAlwaysUseNetworkTraffic:Z

    return v0
.end method

.method static synthetic access$302(Landroid/widget/TranslationNetworkTrafficDialogHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/TranslationNetworkTrafficDialogHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper;->isConfirmAlwaysUseNetworkTraffic:Z

    return p1
.end method

.method static synthetic access$400(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationNetworkTrafficDialogHelper;

    .prologue
    .line 25
    iget-object v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationNetworkTrafficDialogHelper;

    .prologue
    .line 25
    iget-object v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public showNetworkTrafficDialog(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroid/widget/TranslationNetworkTrafficDialogHelper$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/TranslationNetworkTrafficDialogHelper$1;-><init>(Landroid/widget/TranslationNetworkTrafficDialogHelper;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method
