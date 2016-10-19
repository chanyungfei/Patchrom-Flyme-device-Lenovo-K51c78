.class public Lcom/mediatek/storage/StorageDefaultPathDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "StorageDefaultPathDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final INSERT_OTG:Ljava/lang/String; = "insert_otg"

.field private static final SD_ACTION:Ljava/lang/String; = "android.intent.action.MEDIA_BAD_REMOVAL"

.field private static final TAG:Ljava/lang/String; = "StorageDefaultPathDialog"


# instance fields
.field private mInsertOtg:Ljava/lang/Boolean;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSDCardStateFilter:Landroid/content/IntentFilter;

.field private final mSDStateReceiver:Landroid/content/BroadcastReceiver;

.field path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->path:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mInsertOtg:Ljava/lang/Boolean;

    .line 83
    new-instance v0, Lcom/mediatek/storage/StorageDefaultPathDialog$1;

    invoke-direct {v0, p0}, Lcom/mediatek/storage/StorageDefaultPathDialog$1;-><init>(Lcom/mediatek/storage/StorageDefaultPathDialog;)V

    iput-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mSDStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 104
    iget-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 105
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v1, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mInsertOtg:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x8050083

    invoke-virtual {p0, v1}, Lcom/mediatek/storage/StorageDefaultPathDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 107
    invoke-direct {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 110
    const/16 v1, 0x48

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 111
    const/16 v1, 0xf

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 112
    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 113
    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 114
    const v1, 0x1040013

    invoke-virtual {p0, v1}, Lcom/mediatek/storage/StorageDefaultPathDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 115
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 116
    const v1, 0x1040009

    invoke-virtual {p0, v1}, Lcom/mediatek/storage/StorageDefaultPathDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 117
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 118
    invoke-virtual {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->setupAlert()V

    .line 119
    return-void

    .line 105
    :cond_0
    const v1, 0x8050077

    invoke-virtual {p0, v1}, Lcom/mediatek/storage/StorageDefaultPathDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, "messageView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 124
    const v1, 0x8050078

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 125
    return-object v0
.end method

.method private onCancel()V
    .locals 0

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->finish()V

    .line 163
    return-void
.end method

.method private onOK()V
    .locals 3

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const/high16 v1, 0x54000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 153
    const-string v1, "StorageDefaultPathDialog"

    const-string v2, "onOK() start activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0, v0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->startActivity(Landroid/content/Intent;)V

    .line 155
    invoke-virtual {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->finish()V

    .line 157
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 166
    packed-switch p2, :pswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 168
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->onOK()V

    goto :goto_0

    .line 171
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->onCancel()V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const-string v0, "StorageDefaultPathDialog"

    const-string v1, "StorageDefaultPathDialog onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mSDCardStateFilter:Landroid/content/IntentFilter;

    .line 97
    iget-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mSDCardStateFilter:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mSDStateReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    invoke-virtual {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "insert_otg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mInsertOtg:Ljava/lang/Boolean;

    .line 100
    invoke-direct {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->createDialog()V

    .line 101
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 136
    const-string v0, "StorageDefaultPathDialog"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 138
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 144
    const-string v0, "StorageDefaultPathDialog"

    const-string v1, "onPause entry"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 132
    iget-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mSDCardStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/storage/StorageDefaultPathDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    return-void
.end method
