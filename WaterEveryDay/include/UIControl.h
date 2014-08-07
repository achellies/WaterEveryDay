#ifndef __UICONTROL_H__
#define __UICONTROL_H__

#pragma once

namespace DuiLib {

/////////////////////////////////////////////////////////////////////////////////////
//

typedef CControlUI* (CALLBACK* FINDCONTROLPROC)(CControlUI*, LPVOID);

class UILIB_API CControlUI
{
public:
    CControlUI();
    virtual ~CControlUI();

public:
    virtual CStdString GetName() const;
    virtual void SetName(LPCTSTR pstrName);
    virtual LPCTSTR GetClass() const;
    virtual LPVOID GetInterface(LPCTSTR pstrName);
    virtual UINT GetControlFlags() const;

    virtual bool Activate();
    virtual CPaintManagerUI* GetManager() const;
    virtual void SetManager(CPaintManagerUI* pManager, CControlUI* pParent, bool bInit = true);
    virtual CControlUI* GetParent() const;

    // �ı����
    virtual CStdString GetText() const;
    virtual void SetText(LPCTSTR pstrText);	

    // ͼ�����
    DWORD GetBkColor() const;
    void SetBkColor(DWORD dwBackColor);
    DWORD GetBkColor2() const;
    void SetBkColor2(DWORD dwBackColor);
    DWORD GetBkColor3() const;
    void SetBkColor3(DWORD dwBackColor);
    LPCTSTR GetBkImage();
	void SetBkImage(LPCTSTR pStrImage);
	DWORD GetBorderColor() const;
	void SetBorderColor(DWORD dwBorderColor);    
	DWORD GetFocusBorderColor() const;
	void SetFocusBorderColor(DWORD dwBorderColor);
    bool IsColorHSL() const;
    void SetColorHSL(bool bColorHSL);
    int GetBorderSize() const;
    void SetBorderSize(int nSize);
    SIZE GetBorderRound() const;
    void SetBorderRound(SIZE cxyRound);
    bool DrawImage(void* ctx, LPCTSTR pStrImage, LPCTSTR pStrModify = NULL);

    // λ�����
    virtual const RECT& GetPos() const;
    virtual void SetPos(RECT rc);
    virtual int GetWidth() const;
    virtual int GetHeight() const;
    virtual int GetX() const;
    virtual int GetY() const;
    virtual RECT GetPadding() const;
    virtual void SetPadding(RECT rcPadding); // ������߾࣬���ϲ㴰�ڻ���
    virtual SIZE GetFixedXY() const;         // ʵ�ʴ�Сλ��ʹ��GetPos��ȡ������õ�����Ԥ��Ĳο�ֵ
    virtual void SetFixedXY(SIZE szXY);      // ��floatΪtrueʱ��Ч
    virtual int GetFixedWidth() const;       // ʵ�ʴ�Сλ��ʹ��GetPos��ȡ������õ�����Ԥ��Ĳο�ֵ
    virtual void SetFixedWidth(int cx);      // Ԥ��Ĳο�ֵ
    virtual int GetFixedHeight() const;      // ʵ�ʴ�Сλ��ʹ��GetPos��ȡ������õ�����Ԥ��Ĳο�ֵ
    virtual void SetFixedHeight(int cy);     // Ԥ��Ĳο�ֵ
    virtual int GetMinWidth() const;
    virtual void SetMinWidth(int cx);
    virtual int GetMaxWidth() const;
    virtual void SetMaxWidth(int cx);
    virtual int GetMinHeight() const;
    virtual void SetMinHeight(int cy);
    virtual int GetMaxHeight() const;
    virtual void SetMaxHeight(int cy);
	virtual void SetRelativePos(SIZE szMove,SIZE szZoom);
	virtual void SetRelativeParentSize(SIZE sz);
	virtual TRelativePosUI GetRelativePos() const;
	virtual bool IsRelativePos() const;

    // �����ʾ
    virtual CStdString GetToolTip() const;
    virtual void SetToolTip(LPCTSTR pstrText);

    // ��ݼ�
    virtual TCHAR GetShortcut() const;
    virtual void SetShortcut(TCHAR ch);

    // �˵�
    virtual bool IsContextMenuUsed() const;
    virtual void SetContextMenuUsed(bool bMenuUsed);

    // �û�����
    virtual const CStdString& GetUserData(); // �������������û�ʹ��
    virtual void SetUserData(LPCTSTR pstrText); // �������������û�ʹ��
    virtual UINT_PTR GetTag() const; // �������������û�ʹ��
    virtual void SetTag(UINT_PTR pTag); // �������������û�ʹ��

    // һЩ��Ҫ������
	virtual bool IsImageFitallArea() const;
	virtual void SetImageFitAllArea(bool bFit);
    virtual bool IsVisible() const;
    virtual void SetVisible(bool bVisible = true);
    virtual void SetInternVisible(bool bVisible = true); // �����ڲ����ã���ЩUIӵ�д��ھ������Ҫ��д�˺���
    virtual bool IsEnabled() const;
    virtual void SetEnabled(bool bEnable = true);
    virtual bool IsMouseEnabled() const;
    virtual void SetMouseEnabled(bool bEnable = true);
    virtual bool IsKeyboardEnabled() const;
    virtual void SetKeyboardEnabled(bool bEnable = true);
    virtual bool IsFocused() const;
    virtual void SetFocus();
    virtual bool IsFloat() const;
    virtual void SetFloat(bool bFloat = true);

    virtual CControlUI* FindControl(FINDCONTROLPROC Proc, LPVOID pData, UINT uFlags);

    void Invalidate();
    bool IsUpdateNeeded() const;
    void NeedUpdate();
    void NeedParentUpdate();
    DWORD GetAdjustColor(DWORD dwColor);

    virtual void Init();
    virtual void DoInit();

    virtual void Event(TEventUI& event);
    virtual void DoEvent(TEventUI& event);

    virtual void SetAttribute(LPCTSTR pstrName, LPCTSTR pstrValue);
    CControlUI* ApplyAttributeList(LPCTSTR pstrList);

	virtual void SetStretchMode(LPCTSTR pstrStretchMode);
	virtual LPCTSTR GetStretchMode() const;

    virtual SIZE EstimateSize(SIZE szAvailable);
    virtual void DoPaint(void* ctx, const RECT& rcPaint);
    virtual void PaintBkColor(void* ctx);
    virtual void PaintBkImage(void* ctx);
    virtual void PaintStatusImage(void* ctx);
    virtual void PaintText(void* ctx);
    virtual void PaintBorder(void* ctx);

    virtual void DoPostPaint(void* ctx, const RECT& rcPaint);

#ifdef UI_BUILD_FOR_DESIGNER
	virtual bool IsPitchUpon() const;
	virtual void SetPitchUpon(bool bPitchUpon = true);

	virtual bool IsPitchUponContinousTwice() const;
	virtual void SetPitchUponContinousTwice(bool bPitchUponContinousTwice = true);

	virtual bool IsUsedForPitchUpon() const;
	virtual void SetUsedForPitchUpon(bool bUsedForPitchUpon = true);

	virtual void Move(LONG xOffset, LONG yOffset);

	virtual bool IsImageAbsolutePath() const;
	virtual void SetImageAbsolutePath(bool bUseAbsolutePath = false);
#endif

public:
    CEventSource OnInit;
    CEventSource OnDestroy;
    CEventSource OnSize;
    CEventSource OnEvent;
    CEventSource OnNotify;

protected:
    CPaintManagerUI* m_pManager;
    CControlUI* m_pParent;
    CStdString m_sName;
    bool m_bUpdateNeeded;	
	bool m_bMenuUsed;

	// �ÿؼ��Ĵ�С
    RECT m_rcItem;

	// ������ʾ�����ұ߾�
    RECT m_rcPadding;
    SIZE m_cXY;

	// ָ���Ĺ̶����
    SIZE m_cxyFixed;

	// ָ������С���
    SIZE m_cxyMin;

	// ָ���������
    SIZE m_cxyMax;

    bool m_bVisible;
    bool m_bInternVisible;
    bool m_bEnabled;
    bool m_bMouseEnabled;
	bool m_bKeyboardEnabled ;
    bool m_bFocused;
    bool m_bFloat;

	// ��ֹSetPosѭ������
    bool m_bSetPos;

	// ѡ��ͼƬ�Ƿ���Ҫ�����������false����������checkbox & radio box���������ֵ������ǲ�����ͼƬ�ġ�
	bool m_bImageFitallArea;

#ifdef UI_BUILD_FOR_DESIGNER
	// ���ڱ༭����ʱ���ÿؼ��Ƿ�ѡ��
	bool m_bPitchUpon;

	// ���ڿؼ�����ʱ������Ļ�׼
	bool m_bPitchUponContinousTwice;

	// ������ؼ���ѡ��
	bool m_bUsedForPitchUpon;

	// ͼƬ��·���Ƿ���þ���·��
	bool m_bUsedAbsolutePath;
#endif

	TRelativePosUI m_tRelativePos;

    CStdString m_sText;
    CStdString m_sToolTip;
    TCHAR m_chShortcut;
    CStdString m_sUserData;
    UINT_PTR m_pTag;

    DWORD m_dwBackColor;
    DWORD m_dwBackColor2;
    DWORD m_dwBackColor3;
    CStdString m_sBkImage;
	CStdString m_sStretchMode;
    DWORD m_dwBorderColor;
	DWORD m_dwFocusBorderColor;
    bool m_bColorHSL;
    int m_nBorderSize;
    SIZE m_cxyBorderRound;
    RECT m_rcPaint;
};

} // namespace DuiLib

#endif // __UICONTROL_H__
