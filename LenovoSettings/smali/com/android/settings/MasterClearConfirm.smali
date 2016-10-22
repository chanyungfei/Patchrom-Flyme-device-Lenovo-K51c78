.class public Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;
.super Landroid/app/Fragment;
.source "MasterClearConfirm.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MasterClear"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mEraseSdCard:Z

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mWipeCacheAndKeepData:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->mWipeCacheAndKeepData:Z

    .line 58
    new-instance v0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$1;-><init>(Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->mEraseSdCard:Z

    return v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->mWipeCacheAndKeepData:Z

    return v0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b00ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 109
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "erase_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->mEraseSdCard:Z

    .line 113
    if-eqz v0, :cond_1

    const-string v1, "erase_cache_delete_data"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_1
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->mWipeCacheAndKeepData:Z

    .line 114
    const-string v1, "MasterClear"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEraseSdCard "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->mEraseSdCard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "MasterClear"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWipeCacheAndKeepData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->mWipeCacheAndKeepData:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void

    .line 112
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 113
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    const v0, 0x7f040068

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 103
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 104
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method
