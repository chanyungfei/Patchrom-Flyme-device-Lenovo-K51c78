.class public Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;
.super Landroid/preference/Preference;
.source "TtsEnginePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;
    }
.end annotation


# static fields
.field static final FRAGMENT_ARGS_LABEL:Ljava/lang/String; = "label"

.field static final FRAGMENT_ARGS_NAME:Ljava/lang/String; = "name"

.field static final FRAGMENT_ARGS_VOICES:Ljava/lang/String; = "voices"

.field private static final TAG:Ljava/lang/String; = "TtsEnginePreference"


# instance fields
.field private final mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

.field private volatile mPreventRadioButtonCallbacks:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mSettingsActivity:Lcom/flyme/deviceoriginalsettings/SettingsActivity;

.field private mSettingsIcon:Landroid/view/View;

.field private final mSharedState:Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;

.field private mVoiceCheckData:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/speech/tts/TextToSpeech$EngineInfo;
    .param p3, "state"    # Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;
    .param p4, "prefActivity"    # Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$1;-><init>(Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 100
    const v0, 0x7f04008f

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->setLayoutResource(I)V

    .line 102
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSharedState:Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    .line 103
    iput-object p4, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSettingsActivity:Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .line 104
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 107
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->setKey(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;
    .param p1, "x1"    # Landroid/widget/CompoundButton;
    .param p2, "x2"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;)Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSettingsActivity:Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;Landroid/widget/Checkable;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;
    .param p1, "x1"    # Landroid/widget/Checkable;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->makeCurrentEngine(Landroid/widget/Checkable;)V

    return-void
.end method

.method private displayDataAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7
    .param p1, "positiveOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "negativeOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v6, 0x0

    .line 200
    const-string v2, "TtsEnginePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Displaying data alert for :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v4, v4, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 204
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 205
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0a1c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v5, v5, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 207
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 208
    const v2, 0x104000a

    invoke-virtual {v0, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 209
    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 212
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 213
    return-void
.end method

.method private makeCurrentEngine(Landroid/widget/Checkable;)V
    .locals 3
    .param p1, "current"    # Landroid/widget/Checkable;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSharedState:Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSharedState:Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 253
    :goto_0
    if-nez p1, :cond_1

    .line 254
    const-string v0, "liqx"

    const-string v1, "liqxtest: this is a error state of control, should not happen"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSharedState:Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0, p1}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 259
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSharedState:Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentKey(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSharedState:Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 261
    const-string v0, "liqxtest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liqxtest: afater change  mSharedState.getCurrentKey()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSharedState:Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v2}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 263
    return-void

    .line 251
    :cond_0
    const-string v0, "liqxtest"

    const-string v1, "liqxtest: this is a error state mSharedState.getCurrentChecked() = null"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_1
    const-string v0, "liqxtest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liqxtest: before change current state mSharedState.getCurrentKey()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSharedState:Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v2}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSharedState:Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    if-eqz p2, :cond_3

    .line 225
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->shouldDisplayDataAlert()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    new-instance v0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$3;

    invoke-direct {v0, p0, p1}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$3;-><init>(Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;)V

    new-instance v1, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$4;

    invoke-direct {v1, p0, p1}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$4;-><init>(Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;)V

    invoke-direct {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->displayDataAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 240
    :cond_2
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->makeCurrentEngine(Landroid/widget/Checkable;)V

    goto :goto_0

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private shouldDisplayDataAlert()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-boolean v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 113
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSharedState:Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    if-nez v5, :cond_0

    .line 114
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Call to getView() before a call tosetSharedState()"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 119
    .local v2, "view":Landroid/view/View;
    const v5, 0x7f0b00f2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 120
    .local v1, "rb":Landroid/widget/RadioButton;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSharedState:Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v6}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 123
    .local v0, "isChecked":Z
    if-eqz v0, :cond_1

    .line 124
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSharedState:Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v5, v1}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 127
    :cond_1
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 128
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 129
    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 131
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 143
    const v5, 0x7f0b00f4

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    .line 146
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v6, :cond_4

    :goto_0
    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 147
    if-nez v0, :cond_2

    .line 148
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 150
    :cond_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    new-instance v4, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$2;

    invoke-direct {v4, p0}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$2;-><init>(Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v3, :cond_3

    .line 171
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 174
    :cond_3
    return-object v2

    :cond_4
    move v3, v4

    .line 146
    goto :goto_0
.end method

.method public setVoiceDataDetails(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    .line 182
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
