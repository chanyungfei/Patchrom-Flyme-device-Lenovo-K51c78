.class public Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;
.super Landroid/widget/LinearLayout;
.source "SwitchBar.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$SavedState;,
        Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;
    }
.end annotation


# static fields
.field private static MARGIN_ATTRIBUTES:[I


# instance fields
.field private mSwitch:Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

.field private mSwitchChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->MARGIN_ATTRIBUTES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010024
        0x7f010025
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400ab

    invoke-virtual {v4, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    sget-object v4, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->MARGIN_ATTRIBUTES:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v3, v4

    .line 77
    .local v3, "switchBarMarginStart":I
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v2, v4

    .line 78
    .local v2, "switchBarMarginEnd":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    const v4, 0x7f0b0160

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    .line 81
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    const v5, 0x7f0c0028

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 83
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 85
    const v4, 0x7f0b0161

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    .line 88
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    invoke-virtual {v4, v7}, Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;->setSaveEnabled(Z)V

    .line 89
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    invoke-virtual {v4}, Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 90
    .restart local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 92
    new-instance v4, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$1;

    invoke-direct {v4, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$1;-><init>(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;)V

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 99
    invoke-virtual {p0, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setVisibility(I)V

    .line 103
    return-void
.end method


# virtual methods
.method public addOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add twice the same OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method public final getSwitch()Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 166
    invoke-virtual {p0, p2}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->propagateChecked(Z)V

    .line 167
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 154
    .local v0, "isChecked":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setChecked(Z)V

    .line 155
    return-void

    .line 153
    .end local v0    # "isChecked":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 239
    move-object v0, p1

    check-cast v0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$SavedState;

    .line 241
    .local v0, "ss":Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$SavedState;
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 243
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    iget-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 244
    iget-boolean v1, v0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 245
    iget-boolean v1, v0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setVisibility(I)V

    .line 246
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    iget-boolean v1, v0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v1, :cond_1

    move-object v1, p0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 248
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->requestLayout()V

    .line 249
    return-void

    .line 245
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 246
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 229
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 231
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$SavedState;

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 232
    .local v0, "ss":Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$SavedState;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$SavedState;->checked:Z

    .line 233
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->isShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$SavedState;->visible:Z

    .line 234
    return-object v0
.end method

.method public propagateChecked(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 158
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 159
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 160
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    invoke-interface {v2, v3, p1}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;->onSwitchChanged(Landroid/widget/Switch;Z)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method

.method public removeOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 111
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;->setChecked(Z)V

    .line 112
    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 116
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 117
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;->setEnabled(Z)V

    .line 127
    return-void
.end method

.method public setTextViewLabel(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 106
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f0c002a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 107
    return-void

    .line 106
    :cond_0
    const v0, 0x7f0c0028

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->mSwitch:Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 138
    :cond_0
    return-void
.end method
