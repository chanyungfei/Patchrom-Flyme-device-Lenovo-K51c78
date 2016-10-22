.class public Lcom/android/internal/policy/impl/MtkPhoneWindowManager;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "MtkPhoneWindowManager.java"


# static fields
.field static DEBUG:Z = false

.field static DEBUG_LAYOUT:Z = false

.field private static final MSG_DISABLE_FLOATING_MONITOR:I = 0x3e9

.field private static final MSG_ENABLE_FLOATING_MONITOR:I = 0x3e8

.field private static final MSG_MTK_POLICY:I = 0x3e8

.field static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field mDisplayHeight:I

.field mDisplayRotation:I

.field mDisplayWidth:I

.field mHandler:Landroid/os/Handler;

.field mIsDefaultDisplay:Z

.field mMtkPhoneWindowUtility:Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->DEBUG:Z

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->DEBUG_LAYOUT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mMtkPhoneWindowUtility:Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;

    return-void
.end method


# virtual methods
.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 198
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloatingWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "WindowManager"

    const-string v1, "[BMW] Floating window skips applyPostLayoutPolicyLw "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0
.end method

.method public beginLayoutLw(ZIII)V
    .locals 0
    .param p1, "isDefaultDisplay"    # Z
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayRotation"    # I

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->beginLayoutLw(ZIII)V

    .line 86
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mIsDefaultDisplay:Z

    .line 87
    iput p2, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mDisplayWidth:I

    .line 88
    iput p3, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mDisplayHeight:I

    .line 89
    iput p4, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mDisplayRotation:I

    .line 90
    return-void
.end method

.method public finishLayoutLw()V
    .locals 5

    .prologue
    .line 210
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishLayoutLw()V

    .line 211
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mMtkPhoneWindowUtility:Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mMtkPhoneWindowUtility:Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;

    iget v1, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mContentLeft:I

    iget v2, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mContentTop:I

    iget v3, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mContentRight:I

    iget v4, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mContentBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->updateRect(IIII)V

    .line 216
    :cond_0
    return-void
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 2
    .param p1, "lastFocus"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "newFocus"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 224
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mMtkPhoneWindowUtility:Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;

    invoke-virtual {v1, p2}, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->updateFocus2FloatMonitor(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 229
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v0

    .line 230
    .local v0, "resVal":I
    if-eqz v0, :cond_1

    .line 234
    .end local v0    # "resVal":I
    :goto_0
    return v0

    .restart local v0    # "resVal":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 79
    new-instance v0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;

    invoke-direct {v0, p1, p3}, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mMtkPhoneWindowUtility:Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;

    .line 80
    return-void
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 24
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 96
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 97
    .local v12, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloatingWindow()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mIsDefaultDisplay:Z

    if-nez v3, :cond_3

    .line 103
    :cond_2
    invoke-super/range {p0 .. p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    .line 104
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mIsDefaultDisplay:Z

    if-eqz v3, :cond_0

    .line 105
    iget v13, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 106
    .local v13, "fl":I
    iget v15, v12, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 107
    .local v15, "sim":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v16

    .line 108
    .local v16, "sysUiFl":I
    and-int/lit16 v11, v15, 0xf0

    .line 110
    .local v11, "adjust":I
    sget-object v4, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 111
    .local v4, "pf":Landroid/graphics/Rect;
    sget-object v5, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 112
    .local v5, "df":Landroid/graphics/Rect;
    sget-object v6, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 113
    .local v6, "of":Landroid/graphics/Rect;
    sget-object v7, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 114
    .local v7, "cf":Landroid/graphics/Rect;
    sget-object v8, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 115
    .local v8, "vf":Landroid/graphics/Rect;
    sget-object v9, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 116
    .local v9, "dcf":Landroid/graphics/Rect;
    sget-object v10, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    .line 117
    .local v10, "sf":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mDisplayRotation:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mDisplayWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mDisplayHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v3, v1, v2}, Landroid/view/WindowManagerPolicy$WindowState;->getFloatingRect(III)Landroid/graphics/Rect;

    move-result-object v14

    .line 120
    .local v14, "floatRegion":Landroid/graphics/Rect;
    if-eqz v14, :cond_0

    .line 124
    const-string v3, "WindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[BMW] layoutWindowLw floating win = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/16 v18, 0x0

    .local v18, "yOffset":I
    const/16 v17, 0x0

    .line 127
    .local v17, "xOffset":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFocusStack()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 128
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mStableBottom:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v3, v0, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mContentBottom:I

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v3, v0, :cond_4

    .line 129
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mContentBottom:I

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v3, v3, v19

    add-int v18, v18, v3

    .line 131
    :cond_4
    iget v3, v14, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mStableTop:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v3, v0, :cond_5

    .line 132
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mStableTop:I

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    add-int v19, v19, v18

    sub-int v3, v3, v19

    add-int v18, v18, v3

    .line 134
    :cond_5
    if-eqz v18, :cond_6

    .line 135
    iget v3, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mStableLeft:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v3, v0, :cond_9

    .line 136
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mStableLeft:I

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v3, v3, v19

    add-int v17, v17, v3

    .line 143
    :cond_6
    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy$WindowState;->adjustFloatingRect(II)V

    .line 145
    iget v3, v14, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v17

    iput v3, v8, Landroid/graphics/Rect;->left:I

    iput v3, v7, Landroid/graphics/Rect;->left:I

    iput v3, v6, Landroid/graphics/Rect;->left:I

    iput v3, v5, Landroid/graphics/Rect;->left:I

    iput v3, v4, Landroid/graphics/Rect;->left:I

    .line 147
    iget v3, v14, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v18

    iput v3, v8, Landroid/graphics/Rect;->top:I

    iput v3, v7, Landroid/graphics/Rect;->top:I

    iput v3, v6, Landroid/graphics/Rect;->top:I

    iput v3, v5, Landroid/graphics/Rect;->top:I

    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 148
    iget v3, v14, Landroid/graphics/Rect;->right:I

    add-int v3, v3, v17

    iput v3, v8, Landroid/graphics/Rect;->right:I

    iput v3, v7, Landroid/graphics/Rect;->right:I

    iput v3, v6, Landroid/graphics/Rect;->right:I

    iput v3, v5, Landroid/graphics/Rect;->right:I

    iput v3, v4, Landroid/graphics/Rect;->right:I

    .line 150
    iget v3, v14, Landroid/graphics/Rect;->bottom:I

    add-int v3, v3, v18

    iput v3, v8, Landroid/graphics/Rect;->bottom:I

    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    iput v3, v6, Landroid/graphics/Rect;->bottom:I

    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 153
    if-eqz p2, :cond_7

    .line 154
    and-int/lit16 v3, v13, 0x100

    if-nez v3, :cond_a

    invoke-interface/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 159
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mCurrentInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->getInputMethodWindowVisibleHeightLw()I

    move-result v3

    if-lez v3, :cond_8

    .line 160
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mContentBottom:I

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 161
    const/16 v3, 0x10

    if-eq v11, v3, :cond_b

    .line 162
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mDockRight:I

    iput v3, v7, Landroid/graphics/Rect;->right:I

    .line 163
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mDockBottom:I

    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    .line 169
    :goto_3
    const/16 v3, 0x30

    if-eq v11, v3, :cond_c

    .line 170
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mCurRight:I

    iput v3, v8, Landroid/graphics/Rect;->right:I

    .line 171
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mCurBottom:I

    iput v3, v8, Landroid/graphics/Rect;->bottom:I

    .line 176
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mStableTop:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mStableRight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mStableBottom:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v3, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 178
    const-string v3, "WindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[BMW] Compute float frame "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": sim=#"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " attach="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " type="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " flags=0x%08x"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " pf="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " df="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " of="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " cf="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " vf="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " dcf="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " sf="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " floatRegion="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p1

    .line 188
    invoke-interface/range {v3 .. v10}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 137
    :cond_9
    iget v3, v14, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mStableRight:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v3, v0, :cond_6

    .line 138
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mStableRight:I

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v3, v3, v19

    add-int v17, v17, v3

    goto/16 :goto_1

    :cond_a
    move-object v3, v5

    .line 154
    goto/16 :goto_2

    .line 165
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mContentRight:I

    iput v3, v7, Landroid/graphics/Rect;->right:I

    .line 166
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/MtkPhoneWindowManager;->mContentBottom:I

    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 173
    :cond_c
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4
.end method
